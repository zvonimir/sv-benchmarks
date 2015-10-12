extern void __VERIFIER_error() __attribute__ ((__noreturn__));

/**********************************************************************

Copyright (c) 2013 Carnegie Mellon University. All Rights Reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are
met:

1. Redistributions of source code must retain the above copyright
notice, this list of conditions and the following acknowledgments and
disclaimers.

2. Redistributions in binary form must reproduce the above copyright
notice, this list of conditions and the following disclaimer in the
documentation and/or other materials provided with the distribution.

3. The names "Carnegie Mellon University," "SEI" and/or "Software
Engineering Institute" shall not be used to endorse or promote
products derived from this software without prior written
permission. For written permission, please contact
permission@sei.cmu.edu.

4. Products derived from this software may not be called "SEI" nor may
"SEI" appear in their names without prior written permission of
permission@sei.cmu.edu.

5. Redistributions of any form whatsoever must retain the following
acknowledgment:

This material is based upon work funded and supported by the
Department of Defense under Contract No. FA8721-05-C-0003 with
Carnegie Mellon University for the operation of the Software
Engineering Institute, a federally funded research and development
center.

Any opinions, findings and conclusions or recommendations expressed in
this material are those of the author(s) and do not necessarily
reflect the views of the United States Department of Defense.

NO WARRANTY. THIS CARNEGIE MELLON UNIVERSITY AND SOFTWARE ENGINEERING
INSTITUTE MATERIAL IS FURNISHEDON AN "AS-IS" BASIS. CARNEGIE MELLON
UNIVERSITY MAKES NO WARRANTIES OF ANY KIND, EITHER EXPRESSED OR
IMPLIED, AS TO ANY MATTER INCLUDING, BUT NOT LIMITED TO, WARRANTY OF
FITNESS FOR PURPOSE OR MERCHANTABILITY, EXCLUSIVITY, OR RESULTS
OBTAINED FROM USE OF THE MATERIAL. CARNEGIE MELLON UNIVERSITY DOES NOT
MAKE ANY WARRANTY OF ANY KIND WITH RESPECT TO FREEDOM FROM PATENT,
TRADEMARK, OR COPYRIGHT INFRINGEMENT.

This material has been approved for public release and unlimited
distribution.

DM-0000575

**********************************************************************/

/* Generated by CIL v. 1.6.0 */
/* print_CIL_Input is true */

char __VERIFIER_nondet_char(void) ;
_Bool __VERIFIER_nondet__Bool(void) ;
void assert(_Bool arg ) ;
void __VERIFIER_assume(int arg ) ;
typedef char msg_t;
typedef int port_t;
extern void read(port_t p , msg_t m ) ;
extern void write(port_t p , msg_t m ) ;
msg_t nomsg  =    (msg_t )-1;
port_t p12  ;
char p12_old ;
char p12_new ;
_Bool ep12  ;
port_t p13  ;
char p13_old ;
char p13_new ;
_Bool ep13  ;
port_t p21  ;
char p21_old ;
char p21_new ;
_Bool ep21  ;
port_t p23  ;
char p23_old ;
char p23_new ;
_Bool ep23  ;
port_t p31  ;
char p31_old ;
char p31_new ;
_Bool ep31  ;
port_t p32  ;
char p32_old ;
char p32_new ;
_Bool ep32  ;
char id1  ;
char r1  ;
char st1  ;
char nl1  ;
char m1  ;
char max1  ;
_Bool mode1  ;
char id2  ;
char r2  ;
char st2  ;
char nl2  ;
char m2  ;
char max2  ;
_Bool mode2  ;
char id3  ;
char r3  ;
char st3  ;
char nl3  ;
char m3  ;
char max3  ;
_Bool mode3  ;
void node1(void) 
{ 


  {
  if (mode1) {
    r1 = (char )((int )r1 + 1);
    if (ep21) {
      m1 = p21_old;
      p21_old = nomsg;
      if ((int )m1 > (int )max1) {
        max1 = m1;
      }
    }
    if (ep31) {
      m1 = p31_old;
      p31_old = nomsg;
      if ((int )m1 > (int )max1) {
        max1 = m1;
      }
    }
    if ((int )r1 == 1) {
      if ((int )max1 == (int )id1) {
        st1 = (char)1;
      } else {
        nl1 = (char)1;
      }
    }
    mode1 = (_Bool)0;
  } else {
    if ((int )r1 < 2) {
      if (ep12) {
        p12_new = max1 != nomsg && p12_new == nomsg ? max1 : p12_new;
      }
      if (ep13) {
        p13_new = max1 != nomsg && p13_new == nomsg ? max1 : p13_new;
      }
    }
    mode1 = (_Bool)1;
  }
  return;
}
}
void node2(void) 
{ 


  {
  if (mode2) {
    r2 = (char )((int )r2 + 1);
    if (ep12) {
      m2 = p12_old;
      p12_old = nomsg;
      if ((int )m2 > (int )max2) {
        max2 = m2;
      }
    }
    if (ep32) {
      m2 = p32_old;
      p32_old = nomsg;
      if ((int )m2 > (int )max2) {
        max2 = m2;
      }
    }
    if ((int )r2 == 2) {
      if ((int )max2 == (int )id2) {
        st2 = (char)1;
      } else {
        nl2 = (char)1;
      }
    }
    mode2 = (_Bool)0;
  } else {
    if ((int )r2 < 2) {
      if (ep21) {
        p21_new = max2 != nomsg && p21_new == nomsg ? max2 : p21_new;
      }
      if (ep23) {
        p23_new = max2 != nomsg && p23_new == nomsg ? max2 : p23_new;
      }
    }
    mode2 = (_Bool)1;
  }
  return;
}
}
void node3(void) 
{ 


  {
  if (mode3) {
    r3 = (char )((int )r3 + 1);
    if (ep13) {
      m3 = p13_old;
      p13_old = nomsg;
      if ((int )m3 > (int )max3) {
        max3 = m3;
      }
    }
    if (ep23) {
      m3 = p23_old;
      p23_old = nomsg;
      if ((int )m3 > (int )max3) {
        max3 = m3;
      }
    }
    if ((int )r3 == 2) {
      if ((int )max3 == (int )id3) {
        st3 = (char)1;
      } else {
        nl3 = (char)1;
      }
    }
    mode3 = (_Bool)0;
  } else {
    if ((int )r3 < 2) {
      if (ep31) {
        p31_new = max3 != nomsg && p31_new == nomsg ? max3 : p31_new;
      }
      if (ep32) {
        p32_new = max3 != nomsg && p32_new == nomsg ? max3 : p32_new;
      }
    }
    mode3 = (_Bool)1;
  }
  return;
}
}
void (*nodes[3])(void)  = {      & node1,      & node2,      & node3};
int init(void) 
{ 
  _Bool r121 ;
  _Bool r131 ;
  _Bool r211 ;
  _Bool r231 ;
  _Bool r311 ;
  _Bool r321 ;
  _Bool r122 ;
  int tmp ;
  _Bool r132 ;
  int tmp___0 ;
  _Bool r212 ;
  int tmp___1 ;
  _Bool r232 ;
  int tmp___2 ;
  _Bool r312 ;
  int tmp___3 ;
  _Bool r322 ;
  int tmp___4 ;
  int tmp___5 ;

  {
  r121 = ep12;
  r131 = ep13;
  r211 = ep21;
  r231 = ep23;
  r311 = ep31;
  r321 = ep32;
  if (r121) {
    tmp = 1;
  } else
  if (r131) {
    if (ep32) {
      tmp = 1;
    } else {
      tmp = 0;
    }
  } else {
    tmp = 0;
  }
  r122 = (_Bool )tmp;
  if (r131) {
    tmp___0 = 1;
  } else
  if (r121) {
    if (ep23) {
      tmp___0 = 1;
    } else {
      tmp___0 = 0;
    }
  } else {
    tmp___0 = 0;
  }
  r132 = (_Bool )tmp___0;
  if (r211) {
    tmp___1 = 1;
  } else
  if (r231) {
    if (ep31) {
      tmp___1 = 1;
    } else {
      tmp___1 = 0;
    }
  } else {
    tmp___1 = 0;
  }
  r212 = (_Bool )tmp___1;
  if (r231) {
    tmp___2 = 1;
  } else
  if (r211) {
    if (ep13) {
      tmp___2 = 1;
    } else {
      tmp___2 = 0;
    }
  } else {
    tmp___2 = 0;
  }
  r232 = (_Bool )tmp___2;
  if (r311) {
    tmp___3 = 1;
  } else
  if (r321) {
    if (ep21) {
      tmp___3 = 1;
    } else {
      tmp___3 = 0;
    }
  } else {
    tmp___3 = 0;
  }
  r312 = (_Bool )tmp___3;
  if (r321) {
    tmp___4 = 1;
  } else
  if (r311) {
    if (ep12) {
      tmp___4 = 1;
    } else {
      tmp___4 = 0;
    }
  } else {
    tmp___4 = 0;
  }
  r322 = (_Bool )tmp___4;
  if ((int )id1 != (int )id2) {
    if ((int )id1 != (int )id3) {
      if ((int )id2 != (int )id3) {
        if ((int )id1 >= 0) {
          if ((int )id2 >= 0) {
            if ((int )id3 >= 0) {
              if ((int )r1 == 0) {
                if ((int )r2 == 0) {
                  if ((int )r3 == 0) {
                    if (r122) {
                      if (r132) {
                        if (r212) {
                          if (r232) {
                            if (r312) {
                              if (r322) {
                                if ((int )max1 == (int )id1) {
                                  if ((int )max2 == (int )id2) {
                                    if ((int )max3 == (int )id3) {
                                      if ((int )st1 == 0) {
                                        if ((int )st2 == 0) {
                                          if ((int )st3 == 0) {
                                            if ((int )nl1 == 0) {
                                              if ((int )nl2 == 0) {
                                                if ((int )nl3 == 0) {
                                                  if ((int )mode1 == 0) {
                                                    if ((int )mode2 == 0) {
                                                      if ((int )mode3 == 0) {
                                                        tmp___5 = 1;
                                                      } else {
                                                        tmp___5 = 0;
                                                      }
                                                    } else {
                                                      tmp___5 = 0;
                                                    }
                                                  } else {
                                                    tmp___5 = 0;
                                                  }
                                                } else {
                                                  tmp___5 = 0;
                                                }
                                              } else {
                                                tmp___5 = 0;
                                              }
                                            } else {
                                              tmp___5 = 0;
                                            }
                                          } else {
                                            tmp___5 = 0;
                                          }
                                        } else {
                                          tmp___5 = 0;
                                        }
                                      } else {
                                        tmp___5 = 0;
                                      }
                                    } else {
                                      tmp___5 = 0;
                                    }
                                  } else {
                                    tmp___5 = 0;
                                  }
                                } else {
                                  tmp___5 = 0;
                                }
                              } else {
                                tmp___5 = 0;
                              }
                            } else {
                              tmp___5 = 0;
                            }
                          } else {
                            tmp___5 = 0;
                          }
                        } else {
                          tmp___5 = 0;
                        }
                      } else {
                        tmp___5 = 0;
                      }
                    } else {
                      tmp___5 = 0;
                    }
                  } else {
                    tmp___5 = 0;
                  }
                } else {
                  tmp___5 = 0;
                }
              } else {
                tmp___5 = 0;
              }
            } else {
              tmp___5 = 0;
            }
          } else {
            tmp___5 = 0;
          }
        } else {
          tmp___5 = 0;
        }
      } else {
        tmp___5 = 0;
      }
    } else {
      tmp___5 = 0;
    }
  } else {
    tmp___5 = 0;
  }
  return (tmp___5);
}
}
int check(void) 
{ 
  int tmp ;

  {
  if (((int )st1 + (int )st2) + (int )st3 <= 1) {
    if ((int )st1 + (int )nl1 <= 1) {
      if ((int )st2 + (int )nl2 <= 1) {
        if ((int )st3 + (int )nl3 <= 1) {
          if ((int )r1 >= 2) {
            goto _L___1;
          } else
          if (((int )st1 + (int )st2) + (int )st3 == 0) {
            _L___1: /* CIL Label */ 
            if ((int )r1 < 2) {
              goto _L___0;
            } else
            if (((int )st1 + (int )st2) + (int )st3 == 1) {
              _L___0: /* CIL Label */ 
              if ((int )r1 >= 2) {
                goto _L;
              } else
              if (((int )nl1 + (int )nl2) + (int )nl3 == 0) {
                _L: /* CIL Label */ 
                if ((int )r1 < 2) {
                  tmp = 1;
                } else
                if (((int )nl1 + (int )nl2) + (int )nl3 == 2) {
                  tmp = 1;
                } else {
                  tmp = 0;
                }
              } else {
                tmp = 0;
              }
            } else {
              tmp = 0;
            }
          } else {
            tmp = 0;
          }
        } else {
          tmp = 0;
        }
      } else {
        tmp = 0;
      }
    } else {
      tmp = 0;
    }
  } else {
    tmp = 0;
  }
  return (tmp);
}
}
void main(void) 
{ 
  int c1 ;
  int i2 ;

  {
  c1 = 0;
  ep12 = __VERIFIER_nondet__Bool();
  ep13 = __VERIFIER_nondet__Bool();
  ep21 = __VERIFIER_nondet__Bool();
  ep23 = __VERIFIER_nondet__Bool();
  ep31 = __VERIFIER_nondet__Bool();
  ep32 = __VERIFIER_nondet__Bool();
  id1 = __VERIFIER_nondet_char();
  r1 = __VERIFIER_nondet_char();
  st1 = __VERIFIER_nondet_char();
  nl1 = __VERIFIER_nondet_char();
  m1 = __VERIFIER_nondet_char();
  max1 = __VERIFIER_nondet_char();
  mode1 = __VERIFIER_nondet__Bool();
  id2 = __VERIFIER_nondet_char();
  r2 = __VERIFIER_nondet_char();
  st2 = __VERIFIER_nondet_char();
  nl2 = __VERIFIER_nondet_char();
  m2 = __VERIFIER_nondet_char();
  max2 = __VERIFIER_nondet_char();
  mode2 = __VERIFIER_nondet__Bool();
  id3 = __VERIFIER_nondet_char();
  r3 = __VERIFIER_nondet_char();
  st3 = __VERIFIER_nondet_char();
  nl3 = __VERIFIER_nondet_char();
  m3 = __VERIFIER_nondet_char();
  max3 = __VERIFIER_nondet_char();
  mode3 = __VERIFIER_nondet__Bool();
  i2 = init();
  __VERIFIER_assume(i2);
  p12_old = nomsg;
  p12_new = nomsg;
  p13_old = nomsg;
  p13_new = nomsg;
  p21_old = nomsg;
  p21_new = nomsg;
  p23_old = nomsg;
  p23_new = nomsg;
  p31_old = nomsg;
  p31_new = nomsg;
  p32_old = nomsg;
  p32_new = nomsg;
  i2 = 0;
  while (1) {
    {
    node1();
    node2();
    node3();
    p12_old = p12_new;
    p12_new = nomsg;
    p13_old = p13_new;
    p13_new = nomsg;
    p21_old = p21_new;
    p21_new = nomsg;
    p23_old = p23_new;
    p23_new = nomsg;
    p31_old = p31_new;
    p31_new = nomsg;
    p32_old = p32_new;
    p32_new = nomsg;
    c1 = check();
    assert(c1);
    }
  }
}
}
void assert(_Bool arg ) 
{ 


  {
  if (! arg) {
    {
    ERROR: __VERIFIER_error();
    }
  }
}
}
