nt watery = -200;
float e = 0;
float starttimer = 0;
float logx = 1;
int logy = 125;
float loglength = 175;
float logspeed = 1;
float logbasespeed = 2;
float logy1 = 125;
float logx1 = 1;
float logx2 = 1;
float logx3 = 1;
float logx4 = 1;
float logx5 = 1;
float logx6 = 1;
float logx7 = 1;
float logx8 = 1;
float logx9 = 1;
float logx10 = 1;
float logx11 = 1;
float logx12 = 1;
float logx13 = 1;
float logx14 = 1;
boolean onLand = false;
boolean underTheSea = true;
boolean hasLost = false;
boolean startup = false;
float cancellator = 1;
float logger = 0;
float loggerout1 = random(30, 150);
float loggerout2 = random(30, 150);
float loggerout3 = random(30, 150);
float loggerout4 = random(30, 150);
float loggerout5 = random(30, 150);
float loggerout6 = random(30, 150);
float frogx = 400;
float frogy = 750;
float inimicuscounter;
float randommovement;
int onetwothree;
float toadx = 400;
float toady = 125;

void setup() {
  size(900, 800);
  background(160, 216, 230);
  for (int i = 0; i < 4; i++) {
    watery += 200;
    fill(30, 35, 30);
    rect(0, watery, width, 100);
  }
}

void keyPressed() {
  if(key == 'w'){
    frogy -= 100;
}

 else if(key == 'a' && onLand){
    frogx -= 25;
 }
 
 else if(key == 'd' && onLand){
    frogx += 25;
 }
}

void draw() {
 
 // if(hasLost){
 //   background(0,0,0);
 //   e++;
 //   if(e > 100){
 //     hasLost = false;
 //     startup = true;
 //     e = 0;
 // }
 
 //if(startup){
 //  background(0,255,0);
 //  starttimer++;
 //   if(starttimer > 100){
 //     hasLost = false;
 //     startup = false;
 //     e = 0;
 //}
 
 //else
 if(!startup && !hasLost){
  if (logger >= 2000) {
    loggerout1 += 300;
    loggerout2 += 400;
    loggerout3 += 350;
    loggerout4 += 250;
    loggerout5 += 340;
    loggerout6 += 450;
  }
  background(160, 216, 230);
  fill(19, 109, 21);
  rect(0, 0, width, 100);
  rect(0, 200, width, 100);
  rect(0, 400, width, 100);
  rect(0, 600, width, 100);
  fill(116, 72, 42);
  rect(logx, logy, loglength, 50);
  if (logx > 1000) {
    logx = -450;
  }
  logx += logspeed;
 
  rect(logx1, logy, loglength, 50);
  if (logx1 > 1000) {
    logx1 = -600;
  }
  logx1 += logspeed;
 
    rect(logx2, logy, loglength, 50);
  if (logx2 > 1000) {
    logx2 = -150;
  }
  logx2 += logspeed;
 
    rect(logx3, logy, loglength, 50);
  if (logx3 > 1000) {
    logx3 = -400;
  }
  logx3 += logspeed;
 
    rect(logx4, logy, loglength, 50);
  if (logx4 > 1000) {
    logx4 = -1256;
  }
  logx4 += logspeed;
 
    rect(logx5, logy, loglength, 50);
  if (logx5 > 1000) {
    logx5 = random(-1500, -400);
  }
  logx5 += logspeed;
 
    rect(logx6, logy + 200, loglength, 50);
  if (logx6 > 1000) {
    logx6 = -150;
  }
  logx6 += logspeed;
 
    rect(logx7, logy + 200, loglength, 50);
  if (logx7 > 1000) {
    logx7 = -360;
  }
  logx7 += logspeed;
 
    rect(logx8, logy + 200, loglength, 50);
  if (logx8 > 1000) {
    logx8 = -140;
  }
  logx8 += logspeed;
 
    rect(logx9, logy + 200, loglength, 50);
  if (logx9 > 1000) {
    logx9 = -400;
  }
  logx9 += logspeed;
 
    rect(logx10, logy + 200, loglength, 50);
  if (logx10 > 1000) {
    logx10 = -678;
  }
  logx10 += logspeed;
 
    rect(logx11, logy + 400, loglength, 50);
  if (logx11 > 1000) {
    logx11 = -450;
  }
  logx11 += logspeed;
 
    rect(logx12, logy + 400, loglength, 50);
  if (logx12 > 1000) {
    logx12 = -1230;
  }
  logx12 += logspeed;
 
    rect(logx13, logy + 400, loglength, 50);
  if (logx13 > 1000) {
    logx13 = -100;
  }
  logx13 += logspeed;
 
    rect(logx14, logy + 400, loglength, 50);
  if (logx14 > random(1100, 1200)) {
    logx14 = -500;
  }
  logx14 += logspeed;

  fill(150 - 4 * logspeed, 50 + 3 * logspeed , 50 + logspeed);
  circle(frogx - 10, frogy + 5, 30);
  circle(frogx + 10, frogy + 5, 30);
  fill(150 - 4 * logspeed, 50 + 3 * logspeed, 50 + logspeed);
  circle(frogx - 15, frogy - 15, 20);
  circle(frogx + 15, frogy - 15, 20);
  circle(frogx, frogy, 40);
  fill(0,0,0);
  circle(frogx - 15, frogy - 20, 5);
  circle(frogx + 15, frogy - 20, 5);
 
  if(frogy == 750){
    frogx += 1;
    onLand = false;
    underTheSea = true;
  }
 
  else if(frogy == 550){
    frogx += logspeed;
    onLand = false;
    underTheSea = true;
  }
 
  else if(frogy == 350){
    frogx += logspeed;
    onLand = false;
    underTheSea = true;
  }
 
  else if(frogy == 150){
    frogx += logspeed;
    onLand = false;
    underTheSea = true;
  }
  else{
    onLand = true;
    underTheSea = false;
  }
  if( frogx < logx1 + 175 && frogx > logx1 && frogy > 125 && frogy < 175){
    frogx = 400;
    frogy = 750;
  }
  if( frogx < logx2 + 175 && frogx > logx2 && frogy > 125 && frogy < 175){
    frogx = 400;
    frogy = 750;
  }
  if( frogx < logx3 + 175 && frogx > logx3 && frogy > 125 && frogy < 175){
    frogx = 400;
    frogy = 750;
  }
  if( frogx < logx4 + 175 && frogx > logx4 && frogy > 125 && frogy < 175){
    frogx = 400;
    frogy = 750;
  }
  if( frogx < logx5 + 175 && frogx > logx5 && frogy > 125 && frogy < 175){
    frogx = 400;
    frogy = 750;
  }
  if( frogx < logx6 + 175 && frogx > logx6 && frogy > 325 && frogy < 375){
    frogx = 400;
    frogy = 750;
  }
  if( frogx < logx7 + 175 && frogx > logx7 && frogy > 325 && frogy < 375){
    frogx = 400;
    frogy = 750;
  }
  if( frogx < logx8 + 175 && frogx > logx8 && frogy > 325 && frogy < 375){
    frogx = 400;
    frogy = 750;
  }
  if( frogx < logx9 + 175 && frogx > logx9 && frogy > 325 && frogy < 375){
    frogx = 400;
    frogy = 750;
  }
  if( frogx < logx10 + 175 && frogx > logx10 && frogy > 325 && frogy < 375){
    frogx = 400;
    frogy = 750;
  }
  if( frogx < logx11 + 175 && frogx > logx11 && frogy > 525 && frogy < 575){
    frogx = 400;
    frogy = 750;
  }
  if( frogx < logx12 + 175 && frogx > logx12 && frogy > 525 && frogy < 575){
    frogx = 400;
    frogy = 750;
  }
  if( frogx < logx13 + 175 && frogx > logx13 && frogy > 525 && frogy < 575){
    frogx = 400;
    frogy = 750;
  }
  if( frogx < logx14 + 175 && frogx > logx14 && frogy > 525 && frogy < 575){
    frogx = 400;
    frogy = 750;
  }
  if( frogx < logx + 175 && frogx > logx && frogy > 125 && frogy < 175){
    frogx = 400;
    frogy = 750;
  }
  inimicuscounter += logspeed;
  if(inimicuscounter > 1000){
  randommovement = random(0, 3);
  onetwothree = int(randommovement);
  inimicuscounter = 0;
  }
  if(onetwothree == 0){
    toadx += 100;
  }
  else if(onetwothree == 1){
    toadx -= 100;
  }
  else if(onetwothree == 2){
    toady -= 50;
  }
  else if(onetwothree == 3){
    toady += 50;
  }
 
  if(toady > 900) {
    toady = 40;
  }
  if(toadx > 800) {
    toadx = 40;
  }
    if(toady > 700 && toady < 800){
    toadx += 1;
  }
 
  else if(toady > 500 && toady < 600){
    toadx += logspeed;
  }
 
  else if(toady > 300 && toady < 400){
    toadx += logspeed;
  }
 
  else if(toady > 100 && toady < 200){
    toadx += logspeed;
  }
 
  circle(toadx, toady, 50);
  circle(toadx + 20, toady + 20, 20);
  circle(toadx - 20, toady + 20, 20);
 
 
  }
 
 
  if(frogy < 0) {
    frogx = 400;
    frogy = 750;
    logspeed += 1.2;
  }
   if(frogx < 0){
    frogx = 400;
    frogy = 750;
  }
   if(frogx > 900){
    frogx = 400;
    frogy = 750;
  }
  }
 