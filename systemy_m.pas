unit systemy_m;

interface

 procedure zapisz_matryce(nr:byte);

implementation
 uses supersys;





procedure zapisz_matryce(nr:byte);
begin
 if nr=1 then
  begin
   ilosc_z:=7;
   systemy[1,1]:=1; systemy[1,2]:=2; systemy[1,3]:=3;
   systemy[2,1]:=1; systemy[2,2]:=4; systemy[2,3]:=6;
   systemy[3,1]:=1; systemy[3,2]:=5; systemy[3,3]:=7;
   systemy[4,1]:=2; systemy[4,2]:=4; systemy[4,3]:=5;
   systemy[5,1]:=2; systemy[5,2]:=6; systemy[5,3]:=7;
   systemy[6,1]:=3; systemy[6,2]:=4; systemy[6,3]:=7;
   systemy[7,1]:=3; systemy[7,2]:=5; systemy[7,3]:=6;
  end;

 if nr=2 then
  begin
   ilosc_z:=12;
   systemy[1,1]:=1; systemy[1,2]:=2; systemy[1,3]:=3;
   systemy[2,1]:=1; systemy[2,2]:=4; systemy[2,3]:=5;
   systemy[3,1]:=1; systemy[3,2]:=6; systemy[3,3]:=9;
   systemy[4,1]:=1; systemy[4,2]:=7; systemy[4,3]:=8;
   systemy[5,1]:=2; systemy[5,2]:=4; systemy[5,3]:=6;
   systemy[6,1]:=2; systemy[6,2]:=7; systemy[6,3]:=9;
   systemy[7,1]:=2; systemy[7,2]:=5; systemy[7,3]:=8;
   systemy[8,1]:=3; systemy[8,2]:=4; systemy[8,3]:=7;
   systemy[9,1]:=3; systemy[9,2]:=5; systemy[9,3]:=9;
   systemy[10,1]:=3; systemy[10,2]:=6; systemy[10,3]:=8;
   systemy[11,1]:=4; systemy[11,2]:=8; systemy[11,3]:=9;
   systemy[12,1]:=5; systemy[12,2]:=6; systemy[12,3]:=7;
  end;

 if nr=3 then
  begin
   ilosc_z:=19;
   systemy[1,1]:=1; systemy[1,2]:=2; systemy[1,3]:=3;
   systemy[2,1]:=1; systemy[2,2]:=4; systemy[2,3]:=5;
   systemy[3,1]:=1; systemy[3,2]:=6; systemy[3,3]:=9;
   systemy[4,1]:=1; systemy[4,2]:=7; systemy[4,3]:=11;
   systemy[5,1]:=1; systemy[5,2]:=8; systemy[5,3]:=10;
   systemy[6,1]:=2; systemy[6,2]:=4; systemy[6,3]:=6;
   systemy[7,1]:=2; systemy[7,2]:=5; systemy[7,3]:=8;
   systemy[8,1]:=2; systemy[8,2]:=7; systemy[8,3]:=10;
   systemy[9,1]:=2; systemy[9,2]:=9; systemy[9,3]:=11;
   systemy[10,1]:=3; systemy[10,2]:=4; systemy[10,3]:=7;
   systemy[11,1]:=3; systemy[11,2]:=5; systemy[11,3]:=11;
   systemy[12,1]:=3; systemy[12,2]:=8; systemy[12,3]:=9;
   systemy[13,1]:=3; systemy[13,2]:=6; systemy[13,3]:=10;
   systemy[14,1]:=4; systemy[14,2]:=8; systemy[14,3]:=11;
   systemy[15,1]:=4; systemy[15,2]:=9; systemy[15,3]:=10;
   systemy[16,1]:=5; systemy[16,2]:=6; systemy[16,3]:=11;
   systemy[17,1]:=5; systemy[17,2]:=7; systemy[17,3]:=9;
   systemy[18,1]:=5; systemy[18,2]:=10; systemy[18,3]:=11;
   systemy[19,1]:=6; systemy[19,2]:=7; systemy[19,3]:=8;
  end;

 if nr=4 then
  begin
   ilosc_z:=26;
   systemy[1,1]:=1; systemy[1,2]:=2; systemy[1,3]:=8;
   systemy[2,1]:=1; systemy[2,2]:=3; systemy[2,3]:=13;
   systemy[3,1]:=1; systemy[3,2]:=7; systemy[3,3]:=10;
   systemy[4,1]:=1; systemy[4,2]:=4; systemy[4,3]:=11;
   systemy[5,1]:=1; systemy[5,2]:=5; systemy[5,3]:=9;
   systemy[6,1]:=1; systemy[6,2]:=6; systemy[6,3]:=12;
   systemy[7,1]:=2; systemy[7,2]:=3; systemy[7,3]:=9;
   systemy[8,1]:=2; systemy[8,2]:=4; systemy[8,3]:=12;
   systemy[9,1]:=2; systemy[9,2]:=6; systemy[9,3]:=13;
   systemy[10,1]:=2; systemy[10,2]:=5; systemy[10,3]:=7;
   systemy[11,1]:=2; systemy[11,2]:=10; systemy[11,3]:=11;
   systemy[12,1]:=3; systemy[12,2]:=4; systemy[12,3]:=8;
   systemy[13,1]:=3; systemy[13,2]:=5; systemy[13,3]:=10;
   systemy[14,1]:=3; systemy[14,2]:=6; systemy[14,3]:=7;
   systemy[15,1]:=3; systemy[15,2]:=11; systemy[15,3]:=12;
   systemy[16,1]:=4; systemy[16,2]:=5; systemy[16,3]:=13;
   systemy[17,1]:=4; systemy[17,2]:=6; systemy[17,3]:=10;
   systemy[18,1]:=4; systemy[18,2]:=7; systemy[18,3]:=9;
   systemy[19,1]:=5; systemy[19,2]:=6; systemy[19,3]:=11;
   systemy[20,1]:=5; systemy[20,2]:=8; systemy[20,3]:=12;
   systemy[21,1]:=6; systemy[21,2]:=8; systemy[21,3]:=9;
   systemy[22,1]:=7; systemy[22,2]:=8; systemy[22,3]:=11;
   systemy[23,1]:=7; systemy[23,2]:=12; systemy[23,3]:=13;
   systemy[24,1]:=8; systemy[24,2]:=10; systemy[24,3]:=13;
   systemy[25,1]:=9; systemy[25,2]:=10; systemy[25,3]:=12;
   systemy[26,1]:=9; systemy[26,2]:=11; systemy[26,3]:=13;
  end;

 if nr=5 then
  begin
   ilosc_z:=21;
   systemy[1,1]:=1; systemy[1,2]:=6; systemy[1,3]:=11;
   systemy[2,1]:=1; systemy[2,2]:=7; systemy[2,3]:=12;
   systemy[3,1]:=1; systemy[3,2]:=8; systemy[3,3]:=13;
   systemy[4,1]:=1; systemy[4,2]:=9; systemy[4,3]:=14;
   systemy[5,1]:=2; systemy[5,2]:=7; systemy[5,3]:=15;
   systemy[6,1]:=2; systemy[6,2]:=9; systemy[6,3]:=11;
   systemy[7,1]:=2; systemy[7,2]:=6; systemy[7,3]:=12;
   systemy[8,1]:=2; systemy[8,2]:=10; systemy[8,3]:=13;
   systemy[9,1]:=3; systemy[9,2]:=10; systemy[9,3]:=14;
   systemy[10,1]:=3; systemy[10,2]:=9; systemy[10,3]:=15;
   systemy[11,1]:=3; systemy[11,2]:=7; systemy[11,3]:=11;
   systemy[12,1]:=3; systemy[12,2]:=8; systemy[12,3]:=12;
   systemy[13,1]:=4; systemy[13,2]:=6; systemy[13,3]:=13;
   systemy[14,1]:=4; systemy[14,2]:=8; systemy[14,3]:=14;
   systemy[15,1]:=4; systemy[15,2]:=9; systemy[15,3]:=13;
   systemy[16,1]:=4; systemy[16,2]:=10; systemy[16,3]:=15;
   systemy[17,1]:=4; systemy[17,2]:=10; systemy[17,3]:=11;
   systemy[18,1]:=5; systemy[18,2]:=9; systemy[18,3]:=12;
   systemy[19,1]:=5; systemy[19,2]:=7; systemy[19,3]:=13;
   systemy[20,1]:=5; systemy[20,2]:=6; systemy[20,3]:=14;
   systemy[21,1]:=5; systemy[21,2]:=8; systemy[21,3]:=15;
  end;

 if nr=6 then
  begin
   ilosc_z:=25;
   systemy[1,1]:=1; systemy[1,2]:=6; systemy[1,3]:=11;
   systemy[2,1]:=1; systemy[2,2]:=7; systemy[2,3]:=12;
   systemy[3,1]:=1; systemy[3,2]:=8; systemy[3,3]:=13;
   systemy[4,1]:=1; systemy[4,2]:=9; systemy[4,3]:=14;
   systemy[5,1]:=1; systemy[5,2]:=10; systemy[5,3]:=15;
   systemy[6,1]:=2; systemy[6,2]:=6; systemy[6,3]:=15;
   systemy[7,1]:=2; systemy[7,2]:=7; systemy[7,3]:=11;
   systemy[8,1]:=2; systemy[8,2]:=8; systemy[8,3]:=12;
   systemy[9,1]:=2; systemy[9,2]:=9; systemy[9,3]:=13;
   systemy[10,1]:=2; systemy[10,2]:=10; systemy[10,3]:=14;
   systemy[11,1]:=3; systemy[11,2]:=6; systemy[11,3]:=14;
   systemy[12,1]:=3; systemy[12,2]:=7; systemy[12,3]:=15;
   systemy[13,1]:=3; systemy[13,2]:=8; systemy[13,3]:=11;
   systemy[14,1]:=3; systemy[14,2]:=9; systemy[14,3]:=12;
   systemy[15,1]:=3; systemy[15,2]:=10; systemy[15,3]:=13;
   systemy[16,1]:=4; systemy[16,2]:=6; systemy[16,3]:=13;
   systemy[17,1]:=4; systemy[17,2]:=7; systemy[17,3]:=14;
   systemy[18,1]:=4; systemy[18,2]:=8; systemy[18,3]:=15;
   systemy[19,1]:=4; systemy[19,2]:=9; systemy[19,3]:=11;
   systemy[20,1]:=4; systemy[20,2]:=10; systemy[20,3]:=12;
   systemy[21,1]:=5; systemy[21,2]:=6; systemy[21,3]:=12;
   systemy[22,1]:=5; systemy[22,2]:=7; systemy[22,3]:=13;
   systemy[23,1]:=5; systemy[23,2]:=8; systemy[23,3]:=14;
   systemy[24,1]:=5; systemy[24,2]:=9; systemy[24,3]:=15;
   systemy[25,1]:=5; systemy[25,2]:=10; systemy[25,3]:=11;
  end;

 if nr=7 then
  begin
   ilosc_z:=35;
   systemy[1,1]:=1; systemy[1,2]:=2; systemy[1,3]:=13;
   systemy[2,1]:=1; systemy[2,2]:=3; systemy[2,3]:=8;
   systemy[3,1]:=1; systemy[3,2]:=4; systemy[3,3]:=12;
   systemy[4,1]:=1; systemy[4,2]:=5; systemy[4,3]:=11;
   systemy[5,1]:=1; systemy[5,2]:=6; systemy[5,3]:=10;
   systemy[6,1]:=1; systemy[6,2]:=7; systemy[6,3]:=14;
   systemy[7,1]:=1; systemy[7,2]:=9; systemy[7,3]:=15;
   systemy[8,1]:=2; systemy[8,2]:=3; systemy[8,3]:=15;
   systemy[9,1]:=2; systemy[9,2]:=4; systemy[9,3]:=6;
   systemy[10,1]:=2; systemy[10,2]:=5; systemy[10,3]:=8;
   systemy[11,1]:=2; systemy[11,2]:=7; systemy[11,3]:=10;
   systemy[12,1]:=2; systemy[12,2]:=9; systemy[12,3]:=11;
   systemy[13,1]:=2; systemy[13,2]:=12; systemy[13,3]:=14;
   systemy[14,1]:=3; systemy[14,2]:=4; systemy[14,3]:=10;
   systemy[15,1]:=3; systemy[15,2]:=5; systemy[15,3]:=13;
   systemy[16,1]:=3; systemy[16,2]:=6; systemy[16,3]:=9;
   systemy[17,1]:=3; systemy[17,2]:=7; systemy[17,3]:=12;
   systemy[18,1]:=3; systemy[18,2]:=11; systemy[18,3]:=14;
   systemy[19,1]:=4; systemy[19,2]:=5; systemy[19,3]:=15;
   systemy[20,1]:=4; systemy[20,2]:=7; systemy[20,3]:=11;
   systemy[21,1]:=4; systemy[21,2]:=8; systemy[21,3]:=14;
   systemy[22,1]:=4; systemy[22,2]:=9; systemy[22,3]:=13;
   systemy[23,1]:=5; systemy[23,2]:=6; systemy[23,3]:=14;
   systemy[24,1]:=5; systemy[24,2]:=7; systemy[24,3]:=9;
   systemy[25,1]:=5; systemy[25,2]:=10; systemy[25,3]:=12;
   systemy[26,1]:=5; systemy[26,2]:=6; systemy[26,3]:=13;
   systemy[27,1]:=6; systemy[27,2]:=8; systemy[27,3]:=11;
   systemy[28,1]:=6; systemy[28,2]:=12; systemy[28,3]:=15;
   systemy[29,1]:=7; systemy[29,2]:=8; systemy[29,3]:=15;
   systemy[30,1]:=8; systemy[30,2]:=9; systemy[30,3]:=12;
   systemy[31,1]:=8; systemy[31,2]:=10; systemy[31,3]:=13;
   systemy[32,1]:=9; systemy[32,2]:=10; systemy[32,3]:=14;
   systemy[33,1]:=10; systemy[33,2]:=11; systemy[33,3]:=15;
   systemy[34,1]:=11; systemy[34,2]:=12; systemy[34,3]:=13;
   systemy[35,1]:=13; systemy[35,2]:=14; systemy[35,3]:=15;
  end;

 if nr=8 then
  begin
   ilosc_z:=36;
   systemy[1,1]:=1; systemy[1,2]:=7; systemy[1,3]:=13;
   systemy[2,1]:=1; systemy[2,2]:=8; systemy[2,3]:=14;
   systemy[3,1]:=1; systemy[3,2]:=9; systemy[3,3]:=15;
   systemy[4,1]:=1; systemy[4,2]:=10; systemy[4,3]:=16;
   systemy[5,1]:=1; systemy[5,2]:=11; systemy[5,3]:=17;
   systemy[6,1]:=1; systemy[6,2]:=12; systemy[6,3]:=18;
   systemy[7,1]:=2; systemy[7,2]:=7; systemy[7,3]:=18;
   systemy[8,1]:=2; systemy[8,2]:=8; systemy[8,3]:=13;
   systemy[9,1]:=2; systemy[9,2]:=9; systemy[9,3]:=14;
   systemy[10,1]:=2; systemy[10,2]:=10; systemy[10,3]:=15;
   systemy[11,1]:=2; systemy[11,2]:=11; systemy[11,3]:=16;
   systemy[12,1]:=2; systemy[12,2]:=12; systemy[12,3]:=17;
   systemy[13,1]:=3; systemy[13,2]:=7; systemy[13,3]:=17;
   systemy[14,1]:=3; systemy[14,2]:=8; systemy[14,3]:=18;
   systemy[15,1]:=3; systemy[15,2]:=9; systemy[15,3]:=13;
   systemy[16,1]:=3; systemy[16,2]:=10; systemy[16,3]:=14;
   systemy[17,1]:=3; systemy[17,2]:=11; systemy[17,3]:=15;
   systemy[18,1]:=3; systemy[18,2]:=12; systemy[18,3]:=16;
   systemy[19,1]:=4; systemy[19,2]:=7; systemy[19,3]:=16;
   systemy[20,1]:=4; systemy[20,2]:=8; systemy[20,3]:=17;
   systemy[21,1]:=4; systemy[21,2]:=9; systemy[21,3]:=18;
   systemy[22,1]:=4; systemy[22,2]:=10; systemy[22,3]:=13;
   systemy[23,1]:=4; systemy[23,2]:=11; systemy[23,3]:=14;
   systemy[24,1]:=4; systemy[24,2]:=12; systemy[24,3]:=15;
   systemy[25,1]:=5; systemy[25,2]:=7; systemy[25,3]:=15;
   systemy[26,1]:=5; systemy[26,2]:=8; systemy[26,3]:=16;
   systemy[27,1]:=5; systemy[27,2]:=9; systemy[27,3]:=17;
   systemy[28,1]:=5; systemy[28,2]:=10; systemy[28,3]:=18;
   systemy[29,1]:=5; systemy[29,2]:=11; systemy[29,3]:=13;
   systemy[30,1]:=5; systemy[30,2]:=12; systemy[30,3]:=14;
   systemy[31,1]:=6; systemy[31,2]:=7; systemy[31,3]:=14;
   systemy[32,1]:=6; systemy[32,2]:=8; systemy[32,3]:=15;
   systemy[33,1]:=6; systemy[33,2]:=9; systemy[33,3]:=16;
   systemy[34,1]:=6; systemy[34,2]:=10; systemy[34,3]:=17;
   systemy[35,1]:=6; systemy[35,2]:=11; systemy[35,3]:=18;
   systemy[36,1]:=6; systemy[36,2]:=12; systemy[36,3]:=13;
  end;

 if nr=9 then
  begin
   ilosc_z:=49;
   systemy[1,1]:=1; systemy[1,2]:=8; systemy[1,3]:=15;
   systemy[2,1]:=1; systemy[2,2]:=9; systemy[2,3]:=16;
   systemy[3,1]:=1; systemy[3,2]:=10; systemy[3,3]:=17;
   systemy[4,1]:=1; systemy[4,2]:=11; systemy[4,3]:=18;
   systemy[5,1]:=1; systemy[5,2]:=12; systemy[5,3]:=19;
   systemy[6,1]:=1; systemy[6,2]:=13; systemy[6,3]:=20;
   systemy[7,1]:=1; systemy[7,2]:=14; systemy[7,3]:=21;
   systemy[8,1]:=2; systemy[8,2]:=8; systemy[8,3]:=21;
   systemy[9,1]:=2; systemy[9,2]:=9; systemy[9,3]:=15;
   systemy[10,1]:=2; systemy[10,2]:=10; systemy[10,3]:=16;
   systemy[11,1]:=2; systemy[11,2]:=11; systemy[11,3]:=17;
   systemy[12,1]:=2; systemy[12,2]:=12; systemy[12,3]:=18;
   systemy[13,1]:=2; systemy[13,2]:=13; systemy[13,3]:=19;
   systemy[14,1]:=2; systemy[14,2]:=14; systemy[14,3]:=20;
   systemy[15,1]:=3; systemy[15,2]:=8; systemy[15,3]:=20;
   systemy[16,1]:=3; systemy[16,2]:=9; systemy[16,3]:=21;
   systemy[17,1]:=3; systemy[17,2]:=10; systemy[17,3]:=15;
   systemy[18,1]:=3; systemy[18,2]:=11; systemy[18,3]:=16;
   systemy[19,1]:=3; systemy[19,2]:=12; systemy[19,3]:=17;
   systemy[20,1]:=3; systemy[20,2]:=13; systemy[20,3]:=18;
   systemy[21,1]:=3; systemy[21,2]:=14; systemy[21,3]:=19;
   systemy[22,1]:=4; systemy[22,2]:=8; systemy[22,3]:=19;
   systemy[23,1]:=4; systemy[23,2]:=9; systemy[23,3]:=20;
   systemy[24,1]:=4; systemy[24,2]:=10; systemy[24,3]:=21;
   systemy[25,1]:=4; systemy[25,2]:=11; systemy[25,3]:=15;
   systemy[26,1]:=4; systemy[26,2]:=12; systemy[26,3]:=16;
   systemy[27,1]:=4; systemy[27,2]:=13; systemy[27,3]:=17;
   systemy[28,1]:=4; systemy[28,2]:=14; systemy[28,3]:=18;
   systemy[29,1]:=5; systemy[29,2]:=8; systemy[29,3]:=18;
   systemy[30,1]:=5; systemy[30,2]:=9; systemy[30,3]:=19;
   systemy[31,1]:=5; systemy[31,2]:=10; systemy[31,3]:=20;
   systemy[32,1]:=5; systemy[32,2]:=11; systemy[32,3]:=21;
   systemy[33,1]:=5; systemy[33,2]:=12; systemy[33,3]:=15;
   systemy[34,1]:=5; systemy[34,2]:=13; systemy[34,3]:=16;
   systemy[35,1]:=5; systemy[35,2]:=14; systemy[35,3]:=17;
   systemy[36,1]:=6; systemy[36,2]:=8; systemy[36,3]:=17;
   systemy[37,1]:=6; systemy[37,2]:=9; systemy[37,3]:=18;
   systemy[38,1]:=6; systemy[38,2]:=10; systemy[38,3]:=19;
   systemy[39,1]:=6; systemy[39,2]:=11; systemy[39,3]:=20;
   systemy[40,1]:=6; systemy[40,2]:=12; systemy[40,3]:=21;
   systemy[41,1]:=6; systemy[41,2]:=13; systemy[41,3]:=15;
   systemy[42,1]:=6; systemy[42,2]:=14; systemy[42,3]:=16;
   systemy[43,1]:=7; systemy[43,2]:=8; systemy[43,3]:=16;
   systemy[44,1]:=7; systemy[44,2]:=9; systemy[44,3]:=17;
   systemy[45,1]:=7; systemy[45,2]:=10; systemy[45,3]:=18;
   systemy[46,1]:=7; systemy[46,2]:=11; systemy[46,3]:=19;
   systemy[47,1]:=7; systemy[47,2]:=12; systemy[47,3]:=20;
   systemy[48,1]:=7; systemy[48,2]:=13; systemy[48,3]:=21;
   systemy[49,1]:=7; systemy[49,2]:=14; systemy[49,3]:=15;
  end;

 if nr=10 then
  begin
   ilosc_z:=64;
   systemy[1,1]:=1; systemy[1,2]:=9; systemy[1,3]:=17;
   systemy[2,1]:=1; systemy[2,2]:=10; systemy[2,3]:=18;
   systemy[3,1]:=1; systemy[3,2]:=11; systemy[3,3]:=19;
   systemy[4,1]:=1; systemy[4,2]:=12; systemy[4,3]:=20;
   systemy[5,1]:=1; systemy[5,2]:=13; systemy[5,3]:=21;
   systemy[6,1]:=1; systemy[6,2]:=14; systemy[6,3]:=22;
   systemy[7,1]:=1; systemy[7,2]:=15; systemy[7,3]:=23;
   systemy[8,1]:=1; systemy[8,2]:=16; systemy[8,3]:=24;
   systemy[9,1]:=2; systemy[9,2]:=9; systemy[9,3]:=24;
   systemy[10,1]:=2; systemy[10,2]:=10; systemy[10,3]:=17;
   systemy[11,1]:=2; systemy[11,2]:=11; systemy[11,3]:=18;
   systemy[12,1]:=2; systemy[12,2]:=12; systemy[12,3]:=19;
   systemy[13,1]:=2; systemy[13,2]:=13; systemy[13,3]:=20;
   systemy[14,1]:=2; systemy[14,2]:=14; systemy[14,3]:=21;
   systemy[15,1]:=2; systemy[15,2]:=15; systemy[15,3]:=22;
   systemy[16,1]:=2; systemy[16,2]:=16; systemy[16,3]:=23;
   systemy[17,1]:=3; systemy[17,2]:=9; systemy[17,3]:=23;
   systemy[18,1]:=3; systemy[18,2]:=10; systemy[18,3]:=24;
   systemy[19,1]:=3; systemy[19,2]:=11; systemy[19,3]:=17;
   systemy[20,1]:=3; systemy[20,2]:=12; systemy[20,3]:=18;
   systemy[21,1]:=3; systemy[21,2]:=13; systemy[21,3]:=19;
   systemy[22,1]:=3; systemy[22,2]:=14; systemy[22,3]:=20;
   systemy[23,1]:=3; systemy[23,2]:=15; systemy[23,3]:=21;
   systemy[24,1]:=3; systemy[24,2]:=16; systemy[24,3]:=22;
   systemy[25,1]:=4; systemy[25,2]:=9; systemy[25,3]:=22;
   systemy[26,1]:=4; systemy[26,2]:=10; systemy[26,3]:=23;
   systemy[27,1]:=4; systemy[27,2]:=11; systemy[27,3]:=24;
   systemy[28,1]:=4; systemy[28,2]:=12; systemy[28,3]:=17;
   systemy[29,1]:=4; systemy[29,2]:=13; systemy[29,3]:=18;
   systemy[30,1]:=4; systemy[30,2]:=14; systemy[30,3]:=19;
   systemy[31,1]:=4; systemy[31,2]:=15; systemy[31,3]:=20;
   systemy[32,1]:=4; systemy[32,2]:=16; systemy[32,3]:=21;
   systemy[33,1]:=5; systemy[33,2]:=9; systemy[33,3]:=21;
   systemy[34,1]:=5; systemy[34,2]:=10; systemy[34,3]:=22;
   systemy[35,1]:=5; systemy[35,2]:=11; systemy[35,3]:=23;
   systemy[36,1]:=5; systemy[36,2]:=12; systemy[36,3]:=24;
   systemy[37,1]:=5; systemy[37,2]:=13; systemy[37,3]:=17;
   systemy[38,1]:=5; systemy[38,2]:=14; systemy[38,3]:=18;
   systemy[39,1]:=5; systemy[39,2]:=15; systemy[39,3]:=19;
   systemy[40,1]:=5; systemy[40,2]:=16; systemy[40,3]:=20;
   systemy[41,1]:=6; systemy[41,2]:=9; systemy[41,3]:=20;
   systemy[42,1]:=6; systemy[42,2]:=10; systemy[42,3]:=21;
   systemy[43,1]:=6; systemy[43,2]:=11; systemy[43,3]:=22;
   systemy[44,1]:=6; systemy[44,2]:=12; systemy[44,3]:=23;
   systemy[45,1]:=6; systemy[45,2]:=13; systemy[45,3]:=24;
   systemy[46,1]:=6; systemy[46,2]:=14; systemy[46,3]:=17;
   systemy[47,1]:=6; systemy[47,2]:=15; systemy[47,3]:=18;
   systemy[48,1]:=6; systemy[48,2]:=16; systemy[48,3]:=19;
   systemy[49,1]:=7; systemy[49,2]:=9; systemy[49,3]:=19;
   systemy[50,1]:=7; systemy[50,2]:=10; systemy[50,3]:=20;
   systemy[51,1]:=7; systemy[51,2]:=11; systemy[51,3]:=21;
   systemy[52,1]:=7; systemy[52,2]:=12; systemy[52,3]:=22;
   systemy[53,1]:=7; systemy[53,2]:=13; systemy[53,3]:=23;
   systemy[54,1]:=7; systemy[54,2]:=14; systemy[54,3]:=24;
   systemy[55,1]:=7; systemy[55,2]:=15; systemy[55,3]:=17;
   systemy[56,1]:=7; systemy[56,2]:=16; systemy[56,3]:=18;
   systemy[57,1]:=8; systemy[57,2]:=9; systemy[57,3]:=18;
   systemy[58,1]:=8; systemy[58,2]:=10; systemy[58,3]:=19;
   systemy[59,1]:=8; systemy[59,2]:=11; systemy[59,3]:=20;
   systemy[60,1]:=8; systemy[60,2]:=12; systemy[60,3]:=21;
   systemy[61,1]:=8; systemy[61,2]:=13; systemy[61,3]:=22;
   systemy[62,1]:=8; systemy[62,2]:=14; systemy[62,3]:=23;
   systemy[63,1]:=8; systemy[63,2]:=15; systemy[63,3]:=24;
   systemy[64,1]:=8; systemy[64,2]:=16; systemy[64,3]:=17;
  end;
end;

end.
