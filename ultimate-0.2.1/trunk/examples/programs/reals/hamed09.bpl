// Program obtained from Hamad Ladan's plugin which transforms PEAs into Boogie programs. 
var bndResG0_X2, bndResG1_X2, bndResG2_X2, bndResG3_X2, bndResG4_X2, bndResG5_X2, bndResG6_X2, bndResG7_X2, bndResG8_X2, bndResG9_X2 : real, pc0, pc1, pc2, pc3, pc4, pc5, pc6, pc7, pc8, pc9, pc10, pc11, pc12, pc13, pc14, pc15, pc16, pc17, pc18, pc19, pc20, pc21, pc22, pc23 : int, delta : real, V2, V2', V3, V3', V4, V4', V5, V5', V0, V0', V1, V1', V7, V7', V6, V6', V9, V9', V8, V8', V11, V11', V10, V10', V12, V12', V13, V13', V16, V16', V15, V15', V14, V14', V17, V17', V19, V19', V18, V18', V20, V20', V21, V21' : bool;
procedure myProcedure() returns ()
    modifies bndResG0_X2, bndResG1_X2, bndResG2_X2, bndResG3_X2, bndResG4_X2, bndResG5_X2, bndResG6_X2, bndResG7_X2, bndResG8_X2, bndResG9_X2, pc0, pc1, pc2, pc3, pc4, pc5, pc6, pc7, pc8, pc9, pc10, pc11, pc12, pc13, pc14, pc15, pc16, pc17, pc18, pc19, pc20, pc21, pc22, pc23, delta, V2, V2', V3, V3', V4, V4', V5, V5', V0, V0', V1, V1', V7, V7', V6, V6', V9, V9', V8, V8', V11, V11', V10, V10', V12, V12', V13, V13', V16, V16', V15, V15', V14, V14', V17, V17', V19, V19', V18, V18', V20, V20', V21, V21';
{
    havoc pc0, pc1, pc2, pc3, pc4, pc5, pc6, pc7, pc8, pc9, pc10, pc11, pc12, pc13, pc14, pc15, pc16, pc17, pc18, pc19, pc20, pc21, pc22, pc23;
    assume ((((((((((((((((((((((pc0 == 0 && pc1 == 0) && pc2 == 0) && pc3 == 0) && pc4 == 0) && pc5 == 0) && (pc6 == 0 || pc6 == 2)) && pc7 == 0) && pc8 == 0) && pc9 == 0) && pc10 == 0) && pc11 == 0) && (pc12 == 0 || pc12 == 2)) && (pc13 == 0 || pc13 == 2)) && (pc14 == 0 || pc14 == 2)) && (pc15 == 0 || pc15 == 2)) && (pc16 == 0 || pc16 == 2)) && (pc17 == 0 || pc17 == 2)) && pc18 == 0) && pc19 == 0) && pc20 == 0) && (pc21 == 0 || pc21 == 2)) && (pc22 == 0 || pc22 == 2)) && (pc23 == 0 || pc23 == 2);
    havoc bndResG0_X2, bndResG1_X2, bndResG2_X2, bndResG3_X2, bndResG4_X2, bndResG5_X2, bndResG6_X2, bndResG7_X2, bndResG8_X2, bndResG9_X2;
    assume ((((((((bndResG0_X2 == 0.0 && bndResG1_X2 == 0.0) && bndResG2_X2 == 0.0) && bndResG3_X2 == 0.0) && bndResG4_X2 == 0.0) && bndResG5_X2 == 0.0) && bndResG6_X2 == 0.0) && bndResG7_X2 == 0.0) && bndResG8_X2 == 0.0) && bndResG9_X2 == 0.0;
    while (*)
    {
        havoc V2', V3', V4', V5', V0', V1', V7', V6', V9', V8', V11', V10', V12', V13', V16', V15', V14', V17', V19', V18', V20', V21', delta;
        assume delta > 0.0;
        bndResG0_X2 := bndResG0_X2 + delta;
        bndResG1_X2 := bndResG1_X2 + delta;
        bndResG2_X2 := bndResG2_X2 + delta;
        bndResG3_X2 := bndResG3_X2 + delta;
        bndResG4_X2 := bndResG4_X2 + delta;
        bndResG5_X2 := bndResG5_X2 + delta;
        bndResG6_X2 := bndResG6_X2 + delta;
        bndResG7_X2 := bndResG7_X2 + delta;
        bndResG8_X2 := bndResG8_X2 + delta;
        bndResG9_X2 := bndResG9_X2 + delta;
        if (pc0 == 0) {
            assume true;
            assume !V0 || (!V1 && !V2 && !V3 && !V4 && !V5);
        }
        if (pc1 == 0) {
            assume true;
            assume (!V0 && (!V1 || (!V2 && !V3 && !V4 && !V5))) || !V1;
        }
        if (pc2 == 0) {
            assume true;
            assume (!V0 && ((!V1 && (!V2 || (!V3 && !V4 && !V5))) || !V2)) || !V2;
        }
        if (pc3 == 0) {
            assume true;
            assume (!V0 && ((!V1 && ((!V2 && (!V3 || (!V4 && !V5))) || !V3)) || !V3)) || !V3;
        }
        if (pc4 == 0) {
            assume true;
            assume (!V0 && ((!V1 && ((!V2 && ((!V3 && (!V4 || !V5)) || !V4)) || !V4)) || !V4)) || !V4;
        }
        if (pc5 == 0) {
            assume true;
            assume (!V0 && ((!V1 && ((!V2 && ((!V3 && (!V4 || !V5)) || !V5)) || !V5)) || !V5)) || !V5;
        }
        if (pc6 == 2) {
            assume bndResG0_X2 <= 5.0;
            assume V6 && !V7;
        } else if (pc6 == 1) {
            assume bndResG0_X2 <= 5.0;
            assume !V6 && !V7;
        } else if (pc6 == 0) {
            assume true;
            assume !V6 || V7;
        }
        if (pc7 == 0) {
            assume true;
            assume !V2 || !V8 || V9;
        }
        if (pc8 == 0) {
            assume true;
            assume !V7 || !V9;
        }
        if (pc9 == 0) {
            assume true;
            assume !V9 || V2;
        }
        if (pc10 == 0) {
            assume true;
            assume !V7 || V5;
        }
        if (pc11 == 0) {
            assume true;
            assume (!V10 && (!V11 || !V3)) || !V3;
        }
        if (pc12 == 2) {
            assume bndResG1_X2 <= 1.0;
            assume !V11 && V2;
        } else if (pc12 == 1) {
            assume bndResG1_X2 <= 1.0;
            assume !V11 && !V2;
        } else if (pc12 == 0) {
            assume true;
            assume !V2 || V11;
        }
        if (pc13 == 2) {
            assume bndResG2_X2 <= 5.0;
            assume !V10 && V2;
        } else if (pc13 == 1) {
            assume bndResG2_X2 <= 5.0;
            assume !V10 && !V2;
        } else if (pc13 == 0) {
            assume true;
            assume !V2 || V10;
        }
        if (pc14 == 2) {
            assume bndResG3_X2 <= 10.0;
            assume V12 && V5;
        } else if (pc14 == 1) {
            assume bndResG3_X2 <= 10.0;
            assume V12 && !V5;
        } else if (pc14 == 0) {
            assume true;
            assume !V12 || !V5;
        }
        if (pc15 == 2) {
            assume bndResG4_X2 <= 10.0;
            assume V10 && V5;
        } else if (pc15 == 1) {
            assume bndResG4_X2 <= 10.0;
            assume V10 && !V5;
        } else if (pc15 == 0) {
            assume true;
            assume !V10 || !V5;
        }
        if (pc16 == 2) {
            assume bndResG5_X2 <= 10.0;
            assume V13 && V5;
        } else if (pc16 == 1) {
            assume bndResG5_X2 <= 10.0;
            assume V13 && !V5;
        } else if (pc16 == 0) {
            assume true;
            assume !V13 || !V5;
        }
        if (pc17 == 2) {
            assume bndResG6_X2 <= 1.0;
            assume V5 && V6 && !V7;
        } else if (pc17 == 1) {
            assume bndResG6_X2 <= 1.0;
            assume (!V5 && !V7) || (!V6 && !V7);
        } else if (pc17 == 0) {
            assume true;
            assume !V5 || !V6 || V7;
        }
        if (pc18 == 0) {
            assume true;
            assume !V4 || (V14 && (!V4 || (V15 && (!V4 || (V16 && (!V4 || V17))))));
        }
        if (pc19 == 0) {
            assume true;
            assume !V4 || (V14 && (!V4 || (V15 && (!V4 || (V16 && (!V4 || V17))))));
        }
        if (pc20 == 0) {
            assume true;
            assume !V4 || V12;
        }
        if (pc21 == 2) {
            assume bndResG7_X2 <= 10.0;
            assume (!V14 && (V19 || V18)) || (!V15 && (V19 || V18));
        } else if (pc21 == 1) {
            assume bndResG7_X2 <= 10.0;
            assume (!V14 && !V18 && !V19) || (!V15 && !V18 && !V19);
        } else if (pc21 == 0) {
            assume true;
            assume (!V18 && !V19) || (V14 && ((!V18 && !V19) || V15));
        }
        if (pc22 == 2) {
            assume bndResG8_X2 <= 5.0;
            assume (!V14 && V20) || (!V15 && V20);
        } else if (pc22 == 1) {
            assume bndResG8_X2 <= 5.0;
            assume (!V14 && !V20) || (!V15 && !V20);
        } else if (pc22 == 0) {
            assume true;
            assume !V20 || (V14 && (!V20 || V15));
        }
        if (pc23 == 2) {
            assume bndResG9_X2 <= 10.0;
            assume !V21 && V9;
        } else if (pc23 == 1) {
            assume bndResG9_X2 <= 10.0;
            assume !V21 && !V9;
        } else if (pc23 == 0) {
            assume true;
            assume !V9 || V21;
        }
        if (pc0 == 0) {
            if (*) {
                assume true;
                pc0 := 0;
            } else {
                assume false;
            }
        }
        if (pc1 == 0) {
            if (*) {
                assume true;
                pc1 := 0;
            } else {
                assume false;
            }
        }
        if (pc2 == 0) {
            if (*) {
                assume true;
                pc2 := 0;
            } else {
                assume false;
            }
        }
        if (pc3 == 0) {
            if (*) {
                assume true;
                pc3 := 0;
            } else {
                assume false;
            }
        }
        if (pc4 == 0) {
            if (*) {
                assume true;
                pc4 := 0;
            } else {
                assume false;
            }
        }
        if (pc5 == 0) {
            if (*) {
                assume true;
                pc5 := 0;
            } else {
                assume false;
            }
        }
        if (pc6 == 2) {
            if (*) {
                assume bndResG0_X2 < 5.0;
                pc6 := 2;
            } else if (*) {
                assume bndResG0_X2 < 5.0;
                pc6 := 1;
            } else if (*) {
                assume V7';
                pc6 := 0;
            } else {
                assume false;
            }
        } else if (pc6 == 1) {
            if (*) {
                assume bndResG0_X2 < 5.0;
                pc6 := 2;
            } else if (*) {
                assume bndResG0_X2 < 5.0;
                pc6 := 1;
            } else if (*) {
                assume V7';
                pc6 := 0;
            } else {
                assume false;
            }
        } else if (pc6 == 0) {
            if (*) {
                assume true;
                bndResG0_X2 := 0.0;
                pc6 := 2;
            } else if (*) {
                assume true;
                pc6 := 0;
            } else {
                assume false;
            }
        }
        if (pc7 == 0) {
            if (*) {
                assume true;
                pc7 := 0;
            } else {
                assume false;
            }
        }
        if (pc8 == 0) {
            if (*) {
                assume true;
                pc8 := 0;
            } else {
                assume false;
            }
        }
        if (pc9 == 0) {
            if (*) {
                assume true;
                pc9 := 0;
            } else {
                assume false;
            }
        }
        if (pc10 == 0) {
            if (*) {
                assume true;
                pc10 := 0;
            } else {
                assume false;
            }
        }
        if (pc11 == 0) {
            if (*) {
                assume true;
                pc11 := 0;
            } else {
                assume false;
            }
        }
        if (pc12 == 2) {
            if (*) {
                assume bndResG1_X2 < 1.0;
                pc12 := 2;
            } else if (*) {
                assume bndResG1_X2 < 1.0;
                pc12 := 1;
            } else if (*) {
                assume V11';
                pc12 := 0;
            } else {
                assume false;
            }
        } else if (pc12 == 1) {
            if (*) {
                assume bndResG1_X2 < 1.0;
                pc12 := 2;
            } else if (*) {
                assume bndResG1_X2 < 1.0;
                pc12 := 1;
            } else if (*) {
                assume V11';
                pc12 := 0;
            } else {
                assume false;
            }
        } else if (pc12 == 0) {
            if (*) {
                assume true;
                bndResG1_X2 := 0.0;
                pc12 := 2;
            } else if (*) {
                assume true;
                pc12 := 0;
            } else {
                assume false;
            }
        }
        if (pc13 == 2) {
            if (*) {
                assume bndResG2_X2 < 5.0;
                pc13 := 2;
            } else if (*) {
                assume bndResG2_X2 < 5.0;
                pc13 := 1;
            } else if (*) {
                assume V10';
                pc13 := 0;
            } else {
                assume false;
            }
        } else if (pc13 == 1) {
            if (*) {
                assume bndResG2_X2 < 5.0;
                pc13 := 2;
            } else if (*) {
                assume bndResG2_X2 < 5.0;
                pc13 := 1;
            } else if (*) {
                assume V10';
                pc13 := 0;
            } else {
                assume false;
            }
        } else if (pc13 == 0) {
            if (*) {
                assume true;
                bndResG2_X2 := 0.0;
                pc13 := 2;
            } else if (*) {
                assume true;
                pc13 := 0;
            } else {
                assume false;
            }
        }
        if (pc14 == 2) {
            if (*) {
                assume bndResG3_X2 < 10.0;
                pc14 := 2;
            } else if (*) {
                assume bndResG3_X2 < 10.0;
                pc14 := 1;
            } else if (*) {
                assume !V12';
                pc14 := 0;
            } else {
                assume false;
            }
        } else if (pc14 == 1) {
            if (*) {
                assume bndResG3_X2 < 10.0;
                pc14 := 2;
            } else if (*) {
                assume bndResG3_X2 < 10.0;
                pc14 := 1;
            } else if (*) {
                assume !V12';
                pc14 := 0;
            } else {
                assume false;
            }
        } else if (pc14 == 0) {
            if (*) {
                assume true;
                bndResG3_X2 := 0.0;
                pc14 := 2;
            } else if (*) {
                assume true;
                pc14 := 0;
            } else {
                assume false;
            }
        }
        if (pc15 == 2) {
            if (*) {
                assume bndResG4_X2 < 10.0;
                pc15 := 2;
            } else if (*) {
                assume bndResG4_X2 < 10.0;
                pc15 := 1;
            } else if (*) {
                assume !V10';
                pc15 := 0;
            } else {
                assume false;
            }
        } else if (pc15 == 1) {
            if (*) {
                assume bndResG4_X2 < 10.0;
                pc15 := 2;
            } else if (*) {
                assume bndResG4_X2 < 10.0;
                pc15 := 1;
            } else if (*) {
                assume !V10';
                pc15 := 0;
            } else {
                assume false;
            }
        } else if (pc15 == 0) {
            if (*) {
                assume true;
                bndResG4_X2 := 0.0;
                pc15 := 2;
            } else if (*) {
                assume true;
                pc15 := 0;
            } else {
                assume false;
            }
        }
        if (pc16 == 2) {
            if (*) {
                assume bndResG5_X2 < 10.0;
                pc16 := 2;
            } else if (*) {
                assume bndResG5_X2 < 10.0;
                pc16 := 1;
            } else if (*) {
                assume !V13';
                pc16 := 0;
            } else {
                assume false;
            }
        } else if (pc16 == 1) {
            if (*) {
                assume bndResG5_X2 < 10.0;
                pc16 := 2;
            } else if (*) {
                assume bndResG5_X2 < 10.0;
                pc16 := 1;
            } else if (*) {
                assume !V13';
                pc16 := 0;
            } else {
                assume false;
            }
        } else if (pc16 == 0) {
            if (*) {
                assume true;
                bndResG5_X2 := 0.0;
                pc16 := 2;
            } else if (*) {
                assume true;
                pc16 := 0;
            } else {
                assume false;
            }
        }
        if (pc17 == 2) {
            if (*) {
                assume bndResG6_X2 < 1.0;
                pc17 := 2;
            } else if (*) {
                assume bndResG6_X2 < 1.0;
                pc17 := 1;
            } else if (*) {
                assume V7';
                pc17 := 0;
            } else {
                assume false;
            }
        } else if (pc17 == 1) {
            if (*) {
                assume bndResG6_X2 < 1.0;
                pc17 := 2;
            } else if (*) {
                assume bndResG6_X2 < 1.0;
                pc17 := 1;
            } else if (*) {
                assume V7';
                pc17 := 0;
            } else {
                assume false;
            }
        } else if (pc17 == 0) {
            if (*) {
                assume true;
                bndResG6_X2 := 0.0;
                pc17 := 2;
            } else if (*) {
                assume true;
                pc17 := 0;
            } else {
                assume false;
            }
        }
        if (pc18 == 0) {
            if (*) {
                assume true;
                pc18 := 0;
            } else {
                assume false;
            }
        }
        if (pc19 == 0) {
            if (*) {
                assume true;
                pc19 := 0;
            } else {
                assume false;
            }
        }
        if (pc20 == 0) {
            if (*) {
                assume true;
                pc20 := 0;
            } else {
                assume false;
            }
        }
        if (pc21 == 2) {
            if (*) {
                assume bndResG7_X2 < 10.0;
                pc21 := 2;
            } else if (*) {
                assume bndResG7_X2 < 10.0;
                pc21 := 1;
            } else if (*) {
                assume V14' && V15';
                pc21 := 0;
            } else {
                assume false;
            }
        } else if (pc21 == 1) {
            if (*) {
                assume bndResG7_X2 < 10.0;
                pc21 := 2;
            } else if (*) {
                assume bndResG7_X2 < 10.0;
                pc21 := 1;
            } else if (*) {
                assume V14' && V15';
                pc21 := 0;
            } else {
                assume false;
            }
        } else if (pc21 == 0) {
            if (*) {
                assume true;
                bndResG7_X2 := 0.0;
                pc21 := 2;
            } else if (*) {
                assume true;
                pc21 := 0;
            } else {
                assume false;
            }
        }
        if (pc22 == 2) {
            if (*) {
                assume bndResG8_X2 < 5.0;
                pc22 := 2;
            } else if (*) {
                assume bndResG8_X2 < 5.0;
                pc22 := 1;
            } else if (*) {
                assume V14' && V15';
                pc22 := 0;
            } else {
                assume false;
            }
        } else if (pc22 == 1) {
            if (*) {
                assume bndResG8_X2 < 5.0;
                pc22 := 2;
            } else if (*) {
                assume bndResG8_X2 < 5.0;
                pc22 := 1;
            } else if (*) {
                assume V14' && V15';
                pc22 := 0;
            } else {
                assume false;
            }
        } else if (pc22 == 0) {
            if (*) {
                assume true;
                bndResG8_X2 := 0.0;
                pc22 := 2;
            } else if (*) {
                assume true;
                pc22 := 0;
            } else {
                assume false;
            }
        }
        if (pc23 == 2) {
            if (*) {
                assume bndResG9_X2 < 10.0;
                pc23 := 2;
            } else if (*) {
                assume bndResG9_X2 < 10.0;
                pc23 := 1;
            } else if (*) {
                assume V21';
                pc23 := 0;
            } else {
                assume false;
            }
        } else if (pc23 == 1) {
            if (*) {
                assume bndResG9_X2 < 10.0;
                pc23 := 2;
            } else if (*) {
                assume bndResG9_X2 < 10.0;
                pc23 := 1;
            } else if (*) {
                assume V21';
                pc23 := 0;
            } else {
                assume false;
            }
        } else if (pc23 == 0) {
            if (*) {
                assume true;
                bndResG9_X2 := 0.0;
                pc23 := 2;
            } else if (*) {
                assume true;
                pc23 := 0;
            } else {
                assume false;
            }
        }
        V2 := V2';
        V3 := V3';
        V4 := V4';
        V5 := V5';
        V0 := V0';
        V1 := V1';
        V7 := V7';
        V6 := V6';
        V9 := V9';
        V8 := V8';
        V11 := V11';
        V10 := V10';
        V12 := V12';
        V13 := V13';
        V16 := V16';
        V15 := V15';
        V14 := V14';
        V17 := V17';
        V19 := V19';
        V18 := V18';
        V20 := V20';
        V21 := V21';
    }
}

