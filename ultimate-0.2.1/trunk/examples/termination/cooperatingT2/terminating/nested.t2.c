int nondet() { int a; return a; }
_Bool nondet_bool() { _Bool a; return a; }
int main() {
int v1 = nondet();
int v2 = nondet();
int v3 = nondet();
int v4 = nondet();
int v5 = nondet();
int v6 = nondet();
int v7 = nondet();
int v8 = nondet();
goto loc_6;
loc_6:
 if (nondet_bool()) {
  goto loc_0;
 }
 goto end;
loc_CP_1:
 if (nondet_bool()) {
  if (!( 1 <= v3 )) goto end;
  v6 = nondet();
  if (!( 1 <= v6 )) goto end;
  if (!( 1 <= v3 )) goto end;
  goto loc_CP_2;
 }
 if (nondet_bool()) {
  if (!( v3 <= 0 )) goto end;
  v1 = v2;
  goto loc_3;
 }
 goto end;
loc_CP_2:
 if (nondet_bool()) {
  if (!( v6 <= 0 )) goto end;
  goto loc_CP_1;
 }
 if (nondet_bool()) {
  v5 = nondet();
  v8 = nondet();
  if (!( 1 <= v6 )) goto end;
  v3 = -1+v3;
  v6 = -1+v6;
  if (!( v3 <= -1+v5 )) goto end;
  if (!( -1+v5 <= v3 )) goto end;
  if (!( v6 <= -1+v8 )) goto end;
  if (!( -1+v8 <= v6 )) goto end;
  if (!( 1 <= v8 )) goto end;
  goto loc_5;
 }
 goto end;
loc_0:
 if (nondet_bool()) {
  v3 = nondet();
  v6 = nondet();
  goto loc_CP_1;
 }
 goto end;
loc_4:
 if (nondet_bool()) {
  v4 = nondet();
  v7 = nondet();
  if (!( 1 <= v6 )) goto end;
  v3 = -1+v3;
  v6 = -1+v6;
  if (!( v3 <= -1+v4 )) goto end;
  if (!( -1+v4 <= v3 )) goto end;
  if (!( v6 <= -1+v7 )) goto end;
  if (!( -1+v7 <= v6 )) goto end;
  if (!( 1 <= v4 )) goto end;
  if (!( 1 <= v7 )) goto end;
  goto loc_CP_2;
 }
 goto end;
loc_5:
 if (nondet_bool()) {
  goto loc_CP_2;
 }
 goto end;
loc_3:
end:
;
}
