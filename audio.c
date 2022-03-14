#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "sndfile.h"
#include "kiss_fft130/kiss_fft.h"


struct FFT_OUT{
  size_t max_index;
  double max;
  double freq_bin;
};


struct FFT_OUT TestFft(int bufsize, const kiss_fft_cpx in[], kiss_fft_cpx out[], double df)
{
  kiss_fft_cfg cfg;

  // printf("%s\n", title);

  if ((cfg = kiss_fft_alloc(bufsize, 0/*is_inverse_fft*/, NULL, NULL)) != NULL)
  {
    size_t i;
    kiss_fft(cfg, in, out);
    free(cfg);

    double max = 0;   //square to get magnitude
    size_t max_index;
    for (i = 2; i < bufsize; i++){
        // printf(" in[%2zu] = %+f , %+f    "
        //       "out[%2zu] = %+f , %+f\n",
        //       i, in[i].r, in[i].i,
        //       i, out[i].r, out[i].i);
        double magnitude = sqrt((out[i].r)*(out[i].r) + (out[i].i)*(out[i].i));
      if (magnitude > max) {max = magnitude; max_index=i;}
    }
    
    // printf("i: %2zu\n", max_index); 
    // printf("Max: %+f\n", max); 
    // printf("freq bin: %+f\n", df*max_index);
    struct FFT_OUT out_struct;
    out_struct.max_index = max_index;
    out_struct.max = max;
    out_struct.freq_bin = df*(max_index);

    return out_struct;
  
  }
  else
  {
    printf("not enough memory?\n");
    exit(-1);
  }
}

int main () {
  char *inFileName;
  SNDFILE *inFile;
  SF_INFO inFileInfo;
  sf_count_t frames;
  int fs, channels, seekable;
  double df;

  inFileName = "440hz.wav";

  inFile = sf_open(inFileName, SFM_READ, &inFileInfo);
  
  fs = inFileInfo.samplerate;
  frames = inFileInfo.frames;
  channels = inFileInfo.channels;
  seekable = inFileInfo.seekable;
  int partbuf = (int) ((frames*channels));
  int bufsize = (partbuf%2==0)?(partbuf) : (partbuf+1);
  df = fs/(double)(bufsize);


  printf("Sample Rate = %d Hz\n", fs);
  printf("Frames = %ld \n", frames);
  printf("Channels = %d \n", channels);
  printf("Bufsize = %d \n", bufsize);
  printf("df: %+f\n\n", df);
  /* Read sound data into buf in 16-bit short format. */
  short *buf;
  int num;
  buf = (short *) malloc(bufsize*sizeof(short));
  num = sf_read_short(inFile,buf,bufsize);
  sf_close(inFile);

  //do fft 
  kiss_fft_cpx in[bufsize], out[bufsize];
  struct FFT_OUT result;
  size_t i;


  for (i=0;i<bufsize;i++){
    in[i].r = buf[i];
    in[i].i = 0;
  }


    result = TestFft(bufsize, in, out, df);
    printf("freq bin: %+f\n\n", result.freq_bin);
  return 0;
}