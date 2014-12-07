/**
  * This sketch demonstrates how to use the BeatDetect object in FREQ_ENERGY mode.<br />
  * You can use <code>isKick</code>, <code>isSnare</code>, </code>isHat</code>, <code>isRange</code>, 
  * and <code>isOnset(int)</code> to track whatever kind of beats you are looking to track, they will report 
  * true or false based on the state of the analysis. To "tick" the analysis you must call <code>detect</code> 
  * with successive buffers of audio. You can do this inside of <code>draw</code>, but you are likely to miss some 
  * audio buffers if you do this. The sketch implements an <code>AudioListener</code> called <code>BeatListener</code> 
  * so that it can call <code>detect</code> on every buffer of audio processed by the system without repeating a buffer 
  * or missing one.
  * <p>
  * This sketch plays an entire song so it may be a little slow to load.
  * <p>
  * For more information about Minim and additional features, 
  * visit http://code.compartmental.net/minim/
  */

import ddf.minim.*;
import ddf.minim.analysis.*;

import oscP5.*;
import netP5.*;
OscP5 oscP5;

Minim minim;
AudioPlayer song;
BeatDetect beat;
BeatListener bl;
FFT fft;


float kickSize, snareSize, hatSize;


float v_mt1 = 0.0f;
float v_mt2 = 0.0f;
float v_mt3 = 0.0f;
float v_mt4 = 0.0f;
float v_mt5 = 0.0f;

float v_mp1 = 0.0f;
float v_mp2 = 0.0f;
float v_mp3 = 0.0f;
float v_mp4 = 0.0f;
float v_mp5 = 0.0f;

float v_fader = 0.0f;
float v_encoder = 0.0f;

float v_xy11 = 0.0f;
float v_xy12 = 0.0f;
float v_xy21 = 0.0f;
float v_xy22 = 0.0f;

int vGap = 210;
int hGap = 80;

ParticleSystem ps;










class BeatListener implements AudioListener
{
  private BeatDetect beat;
  private AudioPlayer source;
  
  BeatListener(BeatDetect beat, AudioPlayer source)
  {
    this.source = source;
    this.source.addListener(this);
    this.beat = beat;
  }
  
  void samples(float[] samps)
  {
    beat.detect(source.mix);
  }
  
  void samples(float[] sampsL, float[] sampsR)
  {
    beat.detect(source.mix);
  }
}



