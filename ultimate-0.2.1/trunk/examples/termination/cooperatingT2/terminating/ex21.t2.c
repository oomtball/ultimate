int nondet() { int a; return a; }
_Bool nondet_bool() { _Bool a; return a; }
int main() {
int v1 = nondet();
int v2 = nondet();
int v3 = nondet();
int v4 = nondet();
int v5 = nondet();
goto loc_6;
loc_6:
 if (nondet_bool()) {
  goto loc_5;
 }
 goto end;
loc_CP_1:
 if (nondet_bool()) {
  goto loc_3;
 }
 goto end;
loc_CP_2:
 if (nondet_bool()) {
  goto loc_0;
 }
 goto end;
loc_0:
 if (nondet_bool()) {
  if (!( 100 <= v1 )) goto end;
  v2 = 100;
  goto loc_CP_1;
 }
 if (nondet_bool()) {
  if (!( 1+v1 <= 100 )) goto end;
  v3 = v1;
  v4 = v1;
  v1 = 1+v1;
  goto loc_CP_2;
 }
 goto end;
loc_3:
 if (nondet_bool()) {
  if (!( 200 <= v2 )) goto end;
  goto loc_4;
 }
 if (nondet_bool()) {
  if (!( 1+v2 <= 200 )) goto end;
  v5 = v2;
  v2 = 1+v2;
  goto loc_CP_1;
 }
 goto end;
loc_5:
 if (nondet_bool()) {
  v1 = 0;
  goto loc_CP_2;
 }
 goto end;
loc_4:
end:
;
}
