int nondet() { int a; return a; }
_Bool nondet_bool() { _Bool a; return a; }
int main() {
int v1 = nondet();
int v2 = nondet();
goto loc_3;
loc_3:
 if (nondet_bool()) {
  goto loc_2;
 }
 goto end;
loc_CP_0:
 if (nondet_bool()) {
  v2 = nondet();
  v1 = v2;
  v2 = nondet();
  if (!( 1+v1 <= v2 )) goto end;
  if (!( v2 <= 1+v1 )) goto end;
  v1 = v2;
  goto loc_1;
 }
 goto end;
loc_1:
 if (nondet_bool()) {
  goto loc_CP_0;
 }
 goto end;
loc_2:
 if (nondet_bool()) {
  goto loc_CP_0;
 }
 goto end;
end:
;
}
