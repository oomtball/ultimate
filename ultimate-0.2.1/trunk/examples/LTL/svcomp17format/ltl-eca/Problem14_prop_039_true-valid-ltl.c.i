
typedef long unsigned int size_t;
typedef unsigned char __u_char;
typedef unsigned short int __u_short;
typedef unsigned int __u_int;
typedef unsigned long int __u_long;
typedef signed char __int8_t;
typedef unsigned char __uint8_t;
typedef signed short int __int16_t;
typedef unsigned short int __uint16_t;
typedef signed int __int32_t;
typedef unsigned int __uint32_t;
typedef signed long int __int64_t;
typedef unsigned long int __uint64_t;
typedef long int __quad_t;
typedef unsigned long int __u_quad_t;
typedef unsigned long int __dev_t;
typedef unsigned int __uid_t;
typedef unsigned int __gid_t;
typedef unsigned long int __ino_t;
typedef unsigned long int __ino64_t;
typedef unsigned int __mode_t;
typedef unsigned long int __nlink_t;
typedef long int __off_t;
typedef long int __off64_t;
typedef int __pid_t;
typedef struct { int __val[2]; } __fsid_t;
typedef long int __clock_t;
typedef unsigned long int __rlim_t;
typedef unsigned long int __rlim64_t;
typedef unsigned int __id_t;
typedef long int __time_t;
typedef unsigned int __useconds_t;
typedef long int __suseconds_t;
typedef int __daddr_t;
typedef int __key_t;
typedef int __clockid_t;
typedef void * __timer_t;
typedef long int __blksize_t;
typedef long int __blkcnt_t;
typedef long int __blkcnt64_t;
typedef unsigned long int __fsblkcnt_t;
typedef unsigned long int __fsblkcnt64_t;
typedef unsigned long int __fsfilcnt_t;
typedef unsigned long int __fsfilcnt64_t;
typedef long int __fsword_t;
typedef long int __ssize_t;
typedef long int __syscall_slong_t;
typedef unsigned long int __syscall_ulong_t;
typedef __off64_t __loff_t;
typedef __quad_t *__qaddr_t;
typedef char *__caddr_t;
typedef long int __intptr_t;
typedef unsigned int __socklen_t;
struct _IO_FILE;

typedef struct _IO_FILE FILE;


typedef struct _IO_FILE __FILE;
typedef struct
{
  int __count;
  union
  {
    unsigned int __wch;
    char __wchb[4];
  } __value;
} __mbstate_t;
typedef struct
{
  __off_t __pos;
  __mbstate_t __state;
} _G_fpos_t;
typedef struct
{
  __off64_t __pos;
  __mbstate_t __state;
} _G_fpos64_t;
typedef __builtin_va_list __gnuc_va_list;
struct _IO_jump_t; struct _IO_FILE;
typedef void _IO_lock_t;
struct _IO_marker {
  struct _IO_marker *_next;
  struct _IO_FILE *_sbuf;
  int _pos;
};
enum __codecvt_result
{
  __codecvt_ok,
  __codecvt_partial,
  __codecvt_error,
  __codecvt_noconv
};
struct _IO_FILE {
  int _flags;
  char* _IO_read_ptr;
  char* _IO_read_end;
  char* _IO_read_base;
  char* _IO_write_base;
  char* _IO_write_ptr;
  char* _IO_write_end;
  char* _IO_buf_base;
  char* _IO_buf_end;
  char *_IO_save_base;
  char *_IO_backup_base;
  char *_IO_save_end;
  struct _IO_marker *_markers;
  struct _IO_FILE *_chain;
  int _fileno;
  int _flags2;
  __off_t _old_offset;
  unsigned short _cur_column;
  signed char _vtable_offset;
  char _shortbuf[1];
  _IO_lock_t *_lock;
  __off64_t _offset;
  void *__pad1;
  void *__pad2;
  void *__pad3;
  void *__pad4;
  size_t __pad5;
  int _mode;
  char _unused2[15 * sizeof (int) - 4 * sizeof (void *) - sizeof (size_t)];
};
typedef struct _IO_FILE _IO_FILE;
struct _IO_FILE_plus;
extern struct _IO_FILE_plus _IO_2_1_stdin_;
extern struct _IO_FILE_plus _IO_2_1_stdout_;
extern struct _IO_FILE_plus _IO_2_1_stderr_;
typedef __ssize_t __io_read_fn (void *__cookie, char *__buf, size_t __nbytes);
typedef __ssize_t __io_write_fn (void *__cookie, const char *__buf,
     size_t __n);
typedef int __io_seek_fn (void *__cookie, __off64_t *__pos, int __w);
typedef int __io_close_fn (void *__cookie);
extern int __underflow (_IO_FILE *);
extern int __uflow (_IO_FILE *);
extern int __overflow (_IO_FILE *, int);
extern int _IO_getc (_IO_FILE *__fp);
extern int _IO_putc (int __c, _IO_FILE *__fp);
extern int _IO_feof (_IO_FILE *__fp) __attribute__ ((__nothrow__ , __leaf__));
extern int _IO_ferror (_IO_FILE *__fp) __attribute__ ((__nothrow__ , __leaf__));
extern int _IO_peekc_locked (_IO_FILE *__fp);
extern void _IO_flockfile (_IO_FILE *) __attribute__ ((__nothrow__ , __leaf__));
extern void _IO_funlockfile (_IO_FILE *) __attribute__ ((__nothrow__ , __leaf__));
extern int _IO_ftrylockfile (_IO_FILE *) __attribute__ ((__nothrow__ , __leaf__));
extern int _IO_vfscanf (_IO_FILE * __restrict, const char * __restrict,
   __gnuc_va_list, int *__restrict);
extern int _IO_vfprintf (_IO_FILE *__restrict, const char *__restrict,
    __gnuc_va_list);
extern __ssize_t _IO_padn (_IO_FILE *, int, __ssize_t);
extern size_t _IO_sgetn (_IO_FILE *, void *, size_t);
extern __off64_t _IO_seekoff (_IO_FILE *, __off64_t, int, int);
extern __off64_t _IO_seekpos (_IO_FILE *, __off64_t, int);
extern void _IO_free_backup_area (_IO_FILE *) __attribute__ ((__nothrow__ , __leaf__));
typedef __gnuc_va_list va_list;
typedef __off_t off_t;
typedef __ssize_t ssize_t;

typedef _G_fpos_t fpos_t;

extern struct _IO_FILE *stdin;
extern struct _IO_FILE *stdout;
extern struct _IO_FILE *stderr;

extern int remove (const char *__filename) __attribute__ ((__nothrow__ , __leaf__));
extern int rename (const char *__old, const char *__new) __attribute__ ((__nothrow__ , __leaf__));

extern int renameat (int __oldfd, const char *__old, int __newfd,
       const char *__new) __attribute__ ((__nothrow__ , __leaf__));

extern FILE *tmpfile (void) ;
extern char *tmpnam (char *__s) __attribute__ ((__nothrow__ , __leaf__)) ;

extern char *tmpnam_r (char *__s) __attribute__ ((__nothrow__ , __leaf__)) ;
extern char *tempnam (const char *__dir, const char *__pfx)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) ;

extern int fclose (FILE *__stream);
extern int fflush (FILE *__stream);

extern int fflush_unlocked (FILE *__stream);

extern FILE *fopen (const char *__restrict __filename,
      const char *__restrict __modes) ;
extern FILE *freopen (const char *__restrict __filename,
        const char *__restrict __modes,
        FILE *__restrict __stream) ;

extern FILE *fdopen (int __fd, const char *__modes) __attribute__ ((__nothrow__ , __leaf__)) ;
extern FILE *fmemopen (void *__s, size_t __len, const char *__modes)
  __attribute__ ((__nothrow__ , __leaf__)) ;
extern FILE *open_memstream (char **__bufloc, size_t *__sizeloc) __attribute__ ((__nothrow__ , __leaf__)) ;

extern void setbuf (FILE *__restrict __stream, char *__restrict __buf) __attribute__ ((__nothrow__ , __leaf__));
extern int setvbuf (FILE *__restrict __stream, char *__restrict __buf,
      int __modes, size_t __n) __attribute__ ((__nothrow__ , __leaf__));

extern void setbuffer (FILE *__restrict __stream, char *__restrict __buf,
         size_t __size) __attribute__ ((__nothrow__ , __leaf__));
extern void setlinebuf (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));

extern int fprintf (FILE *__restrict __stream,
      const char *__restrict __format, ...);
extern int printf (const char *__restrict __format, ...);
extern int sprintf (char *__restrict __s,
      const char *__restrict __format, ...) __attribute__ ((__nothrow__));
extern int vfprintf (FILE *__restrict __s, const char *__restrict __format,
       __gnuc_va_list __arg);
extern int vprintf (const char *__restrict __format, __gnuc_va_list __arg);
extern int vsprintf (char *__restrict __s, const char *__restrict __format,
       __gnuc_va_list __arg) __attribute__ ((__nothrow__));


extern int snprintf (char *__restrict __s, size_t __maxlen,
       const char *__restrict __format, ...)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 3, 4)));
extern int vsnprintf (char *__restrict __s, size_t __maxlen,
        const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 3, 0)));

extern int vdprintf (int __fd, const char *__restrict __fmt,
       __gnuc_va_list __arg)
     __attribute__ ((__format__ (__printf__, 2, 0)));
extern int dprintf (int __fd, const char *__restrict __fmt, ...)
     __attribute__ ((__format__ (__printf__, 2, 3)));

extern int fscanf (FILE *__restrict __stream,
     const char *__restrict __format, ...) ;
extern int scanf (const char *__restrict __format, ...) ;
extern int sscanf (const char *__restrict __s,
     const char *__restrict __format, ...) __attribute__ ((__nothrow__ , __leaf__));
extern int fscanf (FILE *__restrict __stream, const char *__restrict __format, ...) __asm__ ("" "__isoc99_fscanf") ;
extern int scanf (const char *__restrict __format, ...) __asm__ ("" "__isoc99_scanf") ;
extern int sscanf (const char *__restrict __s, const char *__restrict __format, ...) __asm__ ("" "__isoc99_sscanf") __attribute__ ((__nothrow__ , __leaf__));


extern int vfscanf (FILE *__restrict __s, const char *__restrict __format,
      __gnuc_va_list __arg)
     __attribute__ ((__format__ (__scanf__, 2, 0))) ;
extern int vscanf (const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__format__ (__scanf__, 1, 0))) ;
extern int vsscanf (const char *__restrict __s,
      const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__format__ (__scanf__, 2, 0)));
extern int vfscanf (FILE *__restrict __s, const char *__restrict __format, __gnuc_va_list __arg) __asm__ ("" "__isoc99_vfscanf")
     __attribute__ ((__format__ (__scanf__, 2, 0))) ;
extern int vscanf (const char *__restrict __format, __gnuc_va_list __arg) __asm__ ("" "__isoc99_vscanf")
     __attribute__ ((__format__ (__scanf__, 1, 0))) ;
extern int vsscanf (const char *__restrict __s, const char *__restrict __format, __gnuc_va_list __arg) __asm__ ("" "__isoc99_vsscanf") __attribute__ ((__nothrow__ , __leaf__))
     __attribute__ ((__format__ (__scanf__, 2, 0)));


extern int fgetc (FILE *__stream);
extern int getc (FILE *__stream);
extern int getchar (void);

extern int getc_unlocked (FILE *__stream);
extern int getchar_unlocked (void);
extern int fgetc_unlocked (FILE *__stream);

extern int fputc (int __c, FILE *__stream);
extern int putc (int __c, FILE *__stream);
extern int putchar (int __c);

extern int fputc_unlocked (int __c, FILE *__stream);
extern int putc_unlocked (int __c, FILE *__stream);
extern int putchar_unlocked (int __c);
extern int getw (FILE *__stream);
extern int putw (int __w, FILE *__stream);

extern char *fgets (char *__restrict __s, int __n, FILE *__restrict __stream)
     ;

extern __ssize_t __getdelim (char **__restrict __lineptr,
          size_t *__restrict __n, int __delimiter,
          FILE *__restrict __stream) ;
extern __ssize_t getdelim (char **__restrict __lineptr,
        size_t *__restrict __n, int __delimiter,
        FILE *__restrict __stream) ;
extern __ssize_t getline (char **__restrict __lineptr,
       size_t *__restrict __n,
       FILE *__restrict __stream) ;

extern int fputs (const char *__restrict __s, FILE *__restrict __stream);
extern int puts (const char *__s);
extern int ungetc (int __c, FILE *__stream);
extern size_t fread (void *__restrict __ptr, size_t __size,
       size_t __n, FILE *__restrict __stream) ;
extern size_t fwrite (const void *__restrict __ptr, size_t __size,
        size_t __n, FILE *__restrict __s);

extern size_t fread_unlocked (void *__restrict __ptr, size_t __size,
         size_t __n, FILE *__restrict __stream) ;
extern size_t fwrite_unlocked (const void *__restrict __ptr, size_t __size,
          size_t __n, FILE *__restrict __stream);

extern int fseek (FILE *__stream, long int __off, int __whence);
extern long int ftell (FILE *__stream) ;
extern void rewind (FILE *__stream);

extern int fseeko (FILE *__stream, __off_t __off, int __whence);
extern __off_t ftello (FILE *__stream) ;

extern int fgetpos (FILE *__restrict __stream, fpos_t *__restrict __pos);
extern int fsetpos (FILE *__stream, const fpos_t *__pos);


extern void clearerr (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));
extern int feof (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;
extern int ferror (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;

extern void clearerr_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));
extern int feof_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;
extern int ferror_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;

extern void perror (const char *__s);

extern int sys_nerr;
extern const char *const sys_errlist[];
extern int fileno (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;
extern int fileno_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;
extern FILE *popen (const char *__command, const char *__modes) ;
extern int pclose (FILE *__stream);
extern char *ctermid (char *__s) __attribute__ ((__nothrow__ , __leaf__));
extern void flockfile (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));
extern int ftrylockfile (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;
extern void funlockfile (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));


extern void __assert_fail (const char *__assertion, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));
extern void __assert_perror_fail (int __errnum, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));
extern void __assert (const char *__assertion, const char *__file, int __line)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));


typedef float float_t;
typedef double double_t;

extern double acos (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __acos (double __x) __attribute__ ((__nothrow__ , __leaf__));
extern double asin (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __asin (double __x) __attribute__ ((__nothrow__ , __leaf__));
extern double atan (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __atan (double __x) __attribute__ ((__nothrow__ , __leaf__));
extern double atan2 (double __y, double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __atan2 (double __y, double __x) __attribute__ ((__nothrow__ , __leaf__));
 extern double cos (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __cos (double __x) __attribute__ ((__nothrow__ , __leaf__));
 extern double sin (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __sin (double __x) __attribute__ ((__nothrow__ , __leaf__));
extern double tan (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __tan (double __x) __attribute__ ((__nothrow__ , __leaf__));
extern double cosh (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __cosh (double __x) __attribute__ ((__nothrow__ , __leaf__));
extern double sinh (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __sinh (double __x) __attribute__ ((__nothrow__ , __leaf__));
extern double tanh (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __tanh (double __x) __attribute__ ((__nothrow__ , __leaf__));


extern double acosh (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __acosh (double __x) __attribute__ ((__nothrow__ , __leaf__));
extern double asinh (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __asinh (double __x) __attribute__ ((__nothrow__ , __leaf__));
extern double atanh (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __atanh (double __x) __attribute__ ((__nothrow__ , __leaf__));


 extern double exp (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __exp (double __x) __attribute__ ((__nothrow__ , __leaf__));
extern double frexp (double __x, int *__exponent) __attribute__ ((__nothrow__ , __leaf__)); extern double __frexp (double __x, int *__exponent) __attribute__ ((__nothrow__ , __leaf__));
extern double ldexp (double __x, int __exponent) __attribute__ ((__nothrow__ , __leaf__)); extern double __ldexp (double __x, int __exponent) __attribute__ ((__nothrow__ , __leaf__));
 extern double log (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __log (double __x) __attribute__ ((__nothrow__ , __leaf__));
extern double log10 (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __log10 (double __x) __attribute__ ((__nothrow__ , __leaf__));
extern double modf (double __x, double *__iptr) __attribute__ ((__nothrow__ , __leaf__)); extern double __modf (double __x, double *__iptr) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));


extern double expm1 (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __expm1 (double __x) __attribute__ ((__nothrow__ , __leaf__));
extern double log1p (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __log1p (double __x) __attribute__ ((__nothrow__ , __leaf__));
extern double logb (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __logb (double __x) __attribute__ ((__nothrow__ , __leaf__));


extern double exp2 (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __exp2 (double __x) __attribute__ ((__nothrow__ , __leaf__));
extern double log2 (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __log2 (double __x) __attribute__ ((__nothrow__ , __leaf__));


 extern double pow (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__)); extern double __pow (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__));
extern double sqrt (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __sqrt (double __x) __attribute__ ((__nothrow__ , __leaf__));


extern double hypot (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__)); extern double __hypot (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__));


extern double cbrt (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __cbrt (double __x) __attribute__ ((__nothrow__ , __leaf__));


extern double ceil (double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern double __ceil (double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern double fabs (double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern double __fabs (double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern double floor (double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern double __floor (double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern double fmod (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__)); extern double __fmod (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__));
extern int __isinf (double __value) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern int __finite (double __value) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));

extern int isinf (double __value) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern int finite (double __value) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern double drem (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__)); extern double __drem (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__));
extern double significand (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __significand (double __x) __attribute__ ((__nothrow__ , __leaf__));

extern double copysign (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern double __copysign (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern double nan (const char *__tagb) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern double __nan (const char *__tagb) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));

extern int __isnan (double __value) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern int isnan (double __value) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern double j0 (double) __attribute__ ((__nothrow__ , __leaf__)); extern double __j0 (double) __attribute__ ((__nothrow__ , __leaf__));
extern double j1 (double) __attribute__ ((__nothrow__ , __leaf__)); extern double __j1 (double) __attribute__ ((__nothrow__ , __leaf__));
extern double jn (int, double) __attribute__ ((__nothrow__ , __leaf__)); extern double __jn (int, double) __attribute__ ((__nothrow__ , __leaf__));
extern double y0 (double) __attribute__ ((__nothrow__ , __leaf__)); extern double __y0 (double) __attribute__ ((__nothrow__ , __leaf__));
extern double y1 (double) __attribute__ ((__nothrow__ , __leaf__)); extern double __y1 (double) __attribute__ ((__nothrow__ , __leaf__));
extern double yn (int, double) __attribute__ ((__nothrow__ , __leaf__)); extern double __yn (int, double) __attribute__ ((__nothrow__ , __leaf__));

extern double erf (double) __attribute__ ((__nothrow__ , __leaf__)); extern double __erf (double) __attribute__ ((__nothrow__ , __leaf__));
extern double erfc (double) __attribute__ ((__nothrow__ , __leaf__)); extern double __erfc (double) __attribute__ ((__nothrow__ , __leaf__));
extern double lgamma (double) __attribute__ ((__nothrow__ , __leaf__)); extern double __lgamma (double) __attribute__ ((__nothrow__ , __leaf__));


extern double tgamma (double) __attribute__ ((__nothrow__ , __leaf__)); extern double __tgamma (double) __attribute__ ((__nothrow__ , __leaf__));

extern double gamma (double) __attribute__ ((__nothrow__ , __leaf__)); extern double __gamma (double) __attribute__ ((__nothrow__ , __leaf__));
extern double lgamma_r (double, int *__signgamp) __attribute__ ((__nothrow__ , __leaf__)); extern double __lgamma_r (double, int *__signgamp) __attribute__ ((__nothrow__ , __leaf__));

extern double rint (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __rint (double __x) __attribute__ ((__nothrow__ , __leaf__));
extern double nextafter (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern double __nextafter (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern double nexttoward (double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern double __nexttoward (double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern double remainder (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__)); extern double __remainder (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__));
extern double scalbn (double __x, int __n) __attribute__ ((__nothrow__ , __leaf__)); extern double __scalbn (double __x, int __n) __attribute__ ((__nothrow__ , __leaf__));
extern int ilogb (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern int __ilogb (double __x) __attribute__ ((__nothrow__ , __leaf__));
extern double scalbln (double __x, long int __n) __attribute__ ((__nothrow__ , __leaf__)); extern double __scalbln (double __x, long int __n) __attribute__ ((__nothrow__ , __leaf__));
extern double nearbyint (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern double __nearbyint (double __x) __attribute__ ((__nothrow__ , __leaf__));
extern double round (double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern double __round (double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern double trunc (double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern double __trunc (double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern double remquo (double __x, double __y, int *__quo) __attribute__ ((__nothrow__ , __leaf__)); extern double __remquo (double __x, double __y, int *__quo) __attribute__ ((__nothrow__ , __leaf__));
extern long int lrint (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long int __lrint (double __x) __attribute__ ((__nothrow__ , __leaf__));
__extension__
extern long long int llrint (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long long int __llrint (double __x) __attribute__ ((__nothrow__ , __leaf__));
extern long int lround (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long int __lround (double __x) __attribute__ ((__nothrow__ , __leaf__));
__extension__
extern long long int llround (double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long long int __llround (double __x) __attribute__ ((__nothrow__ , __leaf__));
extern double fdim (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__)); extern double __fdim (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__));
extern double fmax (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern double __fmax (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern double fmin (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern double __fmin (double __x, double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern int __fpclassify (double __value) __attribute__ ((__nothrow__ , __leaf__))
     __attribute__ ((__const__));
extern int __signbit (double __value) __attribute__ ((__nothrow__ , __leaf__))
     __attribute__ ((__const__));
extern double fma (double __x, double __y, double __z) __attribute__ ((__nothrow__ , __leaf__)); extern double __fma (double __x, double __y, double __z) __attribute__ ((__nothrow__ , __leaf__));

extern double scalb (double __x, double __n) __attribute__ ((__nothrow__ , __leaf__)); extern double __scalb (double __x, double __n) __attribute__ ((__nothrow__ , __leaf__));

extern float acosf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __acosf (float __x) __attribute__ ((__nothrow__ , __leaf__));
extern float asinf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __asinf (float __x) __attribute__ ((__nothrow__ , __leaf__));
extern float atanf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __atanf (float __x) __attribute__ ((__nothrow__ , __leaf__));
extern float atan2f (float __y, float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __atan2f (float __y, float __x) __attribute__ ((__nothrow__ , __leaf__));
 extern float cosf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __cosf (float __x) __attribute__ ((__nothrow__ , __leaf__));
 extern float sinf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __sinf (float __x) __attribute__ ((__nothrow__ , __leaf__));
extern float tanf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __tanf (float __x) __attribute__ ((__nothrow__ , __leaf__));
extern float coshf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __coshf (float __x) __attribute__ ((__nothrow__ , __leaf__));
extern float sinhf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __sinhf (float __x) __attribute__ ((__nothrow__ , __leaf__));
extern float tanhf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __tanhf (float __x) __attribute__ ((__nothrow__ , __leaf__));


extern float acoshf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __acoshf (float __x) __attribute__ ((__nothrow__ , __leaf__));
extern float asinhf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __asinhf (float __x) __attribute__ ((__nothrow__ , __leaf__));
extern float atanhf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __atanhf (float __x) __attribute__ ((__nothrow__ , __leaf__));


 extern float expf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __expf (float __x) __attribute__ ((__nothrow__ , __leaf__));
extern float frexpf (float __x, int *__exponent) __attribute__ ((__nothrow__ , __leaf__)); extern float __frexpf (float __x, int *__exponent) __attribute__ ((__nothrow__ , __leaf__));
extern float ldexpf (float __x, int __exponent) __attribute__ ((__nothrow__ , __leaf__)); extern float __ldexpf (float __x, int __exponent) __attribute__ ((__nothrow__ , __leaf__));
 extern float logf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __logf (float __x) __attribute__ ((__nothrow__ , __leaf__));
extern float log10f (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __log10f (float __x) __attribute__ ((__nothrow__ , __leaf__));
extern float modff (float __x, float *__iptr) __attribute__ ((__nothrow__ , __leaf__)); extern float __modff (float __x, float *__iptr) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));


extern float expm1f (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __expm1f (float __x) __attribute__ ((__nothrow__ , __leaf__));
extern float log1pf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __log1pf (float __x) __attribute__ ((__nothrow__ , __leaf__));
extern float logbf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __logbf (float __x) __attribute__ ((__nothrow__ , __leaf__));


extern float exp2f (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __exp2f (float __x) __attribute__ ((__nothrow__ , __leaf__));
extern float log2f (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __log2f (float __x) __attribute__ ((__nothrow__ , __leaf__));


 extern float powf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__)); extern float __powf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__));
extern float sqrtf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __sqrtf (float __x) __attribute__ ((__nothrow__ , __leaf__));


extern float hypotf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__)); extern float __hypotf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__));


extern float cbrtf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __cbrtf (float __x) __attribute__ ((__nothrow__ , __leaf__));


extern float ceilf (float __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern float __ceilf (float __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern float fabsf (float __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern float __fabsf (float __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern float floorf (float __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern float __floorf (float __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern float fmodf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__)); extern float __fmodf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__));
extern int __isinff (float __value) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern int __finitef (float __value) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));

extern int isinff (float __value) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern int finitef (float __value) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern float dremf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__)); extern float __dremf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__));
extern float significandf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __significandf (float __x) __attribute__ ((__nothrow__ , __leaf__));

extern float copysignf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern float __copysignf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern float nanf (const char *__tagb) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern float __nanf (const char *__tagb) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));

extern int __isnanf (float __value) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern int isnanf (float __value) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern float j0f (float) __attribute__ ((__nothrow__ , __leaf__)); extern float __j0f (float) __attribute__ ((__nothrow__ , __leaf__));
extern float j1f (float) __attribute__ ((__nothrow__ , __leaf__)); extern float __j1f (float) __attribute__ ((__nothrow__ , __leaf__));
extern float jnf (int, float) __attribute__ ((__nothrow__ , __leaf__)); extern float __jnf (int, float) __attribute__ ((__nothrow__ , __leaf__));
extern float y0f (float) __attribute__ ((__nothrow__ , __leaf__)); extern float __y0f (float) __attribute__ ((__nothrow__ , __leaf__));
extern float y1f (float) __attribute__ ((__nothrow__ , __leaf__)); extern float __y1f (float) __attribute__ ((__nothrow__ , __leaf__));
extern float ynf (int, float) __attribute__ ((__nothrow__ , __leaf__)); extern float __ynf (int, float) __attribute__ ((__nothrow__ , __leaf__));

extern float erff (float) __attribute__ ((__nothrow__ , __leaf__)); extern float __erff (float) __attribute__ ((__nothrow__ , __leaf__));
extern float erfcf (float) __attribute__ ((__nothrow__ , __leaf__)); extern float __erfcf (float) __attribute__ ((__nothrow__ , __leaf__));
extern float lgammaf (float) __attribute__ ((__nothrow__ , __leaf__)); extern float __lgammaf (float) __attribute__ ((__nothrow__ , __leaf__));


extern float tgammaf (float) __attribute__ ((__nothrow__ , __leaf__)); extern float __tgammaf (float) __attribute__ ((__nothrow__ , __leaf__));

extern float gammaf (float) __attribute__ ((__nothrow__ , __leaf__)); extern float __gammaf (float) __attribute__ ((__nothrow__ , __leaf__));
extern float lgammaf_r (float, int *__signgamp) __attribute__ ((__nothrow__ , __leaf__)); extern float __lgammaf_r (float, int *__signgamp) __attribute__ ((__nothrow__ , __leaf__));

extern float rintf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __rintf (float __x) __attribute__ ((__nothrow__ , __leaf__));
extern float nextafterf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern float __nextafterf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern float nexttowardf (float __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern float __nexttowardf (float __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern float remainderf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__)); extern float __remainderf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__));
extern float scalbnf (float __x, int __n) __attribute__ ((__nothrow__ , __leaf__)); extern float __scalbnf (float __x, int __n) __attribute__ ((__nothrow__ , __leaf__));
extern int ilogbf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern int __ilogbf (float __x) __attribute__ ((__nothrow__ , __leaf__));
extern float scalblnf (float __x, long int __n) __attribute__ ((__nothrow__ , __leaf__)); extern float __scalblnf (float __x, long int __n) __attribute__ ((__nothrow__ , __leaf__));
extern float nearbyintf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern float __nearbyintf (float __x) __attribute__ ((__nothrow__ , __leaf__));
extern float roundf (float __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern float __roundf (float __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern float truncf (float __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern float __truncf (float __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern float remquof (float __x, float __y, int *__quo) __attribute__ ((__nothrow__ , __leaf__)); extern float __remquof (float __x, float __y, int *__quo) __attribute__ ((__nothrow__ , __leaf__));
extern long int lrintf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern long int __lrintf (float __x) __attribute__ ((__nothrow__ , __leaf__));
__extension__
extern long long int llrintf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern long long int __llrintf (float __x) __attribute__ ((__nothrow__ , __leaf__));
extern long int lroundf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern long int __lroundf (float __x) __attribute__ ((__nothrow__ , __leaf__));
__extension__
extern long long int llroundf (float __x) __attribute__ ((__nothrow__ , __leaf__)); extern long long int __llroundf (float __x) __attribute__ ((__nothrow__ , __leaf__));
extern float fdimf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__)); extern float __fdimf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__));
extern float fmaxf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern float __fmaxf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern float fminf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern float __fminf (float __x, float __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern int __fpclassifyf (float __value) __attribute__ ((__nothrow__ , __leaf__))
     __attribute__ ((__const__));
extern int __signbitf (float __value) __attribute__ ((__nothrow__ , __leaf__))
     __attribute__ ((__const__));
extern float fmaf (float __x, float __y, float __z) __attribute__ ((__nothrow__ , __leaf__)); extern float __fmaf (float __x, float __y, float __z) __attribute__ ((__nothrow__ , __leaf__));

extern float scalbf (float __x, float __n) __attribute__ ((__nothrow__ , __leaf__)); extern float __scalbf (float __x, float __n) __attribute__ ((__nothrow__ , __leaf__));

extern long double acosl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __acosl (long double __x) __attribute__ ((__nothrow__ , __leaf__));
extern long double asinl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __asinl (long double __x) __attribute__ ((__nothrow__ , __leaf__));
extern long double atanl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __atanl (long double __x) __attribute__ ((__nothrow__ , __leaf__));
extern long double atan2l (long double __y, long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __atan2l (long double __y, long double __x) __attribute__ ((__nothrow__ , __leaf__));
 extern long double cosl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __cosl (long double __x) __attribute__ ((__nothrow__ , __leaf__));
 extern long double sinl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __sinl (long double __x) __attribute__ ((__nothrow__ , __leaf__));
extern long double tanl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __tanl (long double __x) __attribute__ ((__nothrow__ , __leaf__));
extern long double coshl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __coshl (long double __x) __attribute__ ((__nothrow__ , __leaf__));
extern long double sinhl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __sinhl (long double __x) __attribute__ ((__nothrow__ , __leaf__));
extern long double tanhl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __tanhl (long double __x) __attribute__ ((__nothrow__ , __leaf__));


extern long double acoshl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __acoshl (long double __x) __attribute__ ((__nothrow__ , __leaf__));
extern long double asinhl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __asinhl (long double __x) __attribute__ ((__nothrow__ , __leaf__));
extern long double atanhl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __atanhl (long double __x) __attribute__ ((__nothrow__ , __leaf__));


 extern long double expl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __expl (long double __x) __attribute__ ((__nothrow__ , __leaf__));
extern long double frexpl (long double __x, int *__exponent) __attribute__ ((__nothrow__ , __leaf__)); extern long double __frexpl (long double __x, int *__exponent) __attribute__ ((__nothrow__ , __leaf__));
extern long double ldexpl (long double __x, int __exponent) __attribute__ ((__nothrow__ , __leaf__)); extern long double __ldexpl (long double __x, int __exponent) __attribute__ ((__nothrow__ , __leaf__));
 extern long double logl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __logl (long double __x) __attribute__ ((__nothrow__ , __leaf__));
extern long double log10l (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __log10l (long double __x) __attribute__ ((__nothrow__ , __leaf__));
extern long double modfl (long double __x, long double *__iptr) __attribute__ ((__nothrow__ , __leaf__)); extern long double __modfl (long double __x, long double *__iptr) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));


extern long double expm1l (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __expm1l (long double __x) __attribute__ ((__nothrow__ , __leaf__));
extern long double log1pl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __log1pl (long double __x) __attribute__ ((__nothrow__ , __leaf__));
extern long double logbl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __logbl (long double __x) __attribute__ ((__nothrow__ , __leaf__));


extern long double exp2l (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __exp2l (long double __x) __attribute__ ((__nothrow__ , __leaf__));
extern long double log2l (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __log2l (long double __x) __attribute__ ((__nothrow__ , __leaf__));


 extern long double powl (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)); extern long double __powl (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__));
extern long double sqrtl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __sqrtl (long double __x) __attribute__ ((__nothrow__ , __leaf__));


extern long double hypotl (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)); extern long double __hypotl (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__));


extern long double cbrtl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __cbrtl (long double __x) __attribute__ ((__nothrow__ , __leaf__));


extern long double ceill (long double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern long double __ceill (long double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern long double fabsl (long double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern long double __fabsl (long double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern long double floorl (long double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern long double __floorl (long double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern long double fmodl (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)); extern long double __fmodl (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__));
extern int __isinfl (long double __value) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern int __finitel (long double __value) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));

extern int isinfl (long double __value) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern int finitel (long double __value) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern long double dreml (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)); extern long double __dreml (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__));
extern long double significandl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __significandl (long double __x) __attribute__ ((__nothrow__ , __leaf__));

extern long double copysignl (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern long double __copysignl (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern long double nanl (const char *__tagb) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern long double __nanl (const char *__tagb) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));

extern int __isnanl (long double __value) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern int isnanl (long double __value) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern long double j0l (long double) __attribute__ ((__nothrow__ , __leaf__)); extern long double __j0l (long double) __attribute__ ((__nothrow__ , __leaf__));
extern long double j1l (long double) __attribute__ ((__nothrow__ , __leaf__)); extern long double __j1l (long double) __attribute__ ((__nothrow__ , __leaf__));
extern long double jnl (int, long double) __attribute__ ((__nothrow__ , __leaf__)); extern long double __jnl (int, long double) __attribute__ ((__nothrow__ , __leaf__));
extern long double y0l (long double) __attribute__ ((__nothrow__ , __leaf__)); extern long double __y0l (long double) __attribute__ ((__nothrow__ , __leaf__));
extern long double y1l (long double) __attribute__ ((__nothrow__ , __leaf__)); extern long double __y1l (long double) __attribute__ ((__nothrow__ , __leaf__));
extern long double ynl (int, long double) __attribute__ ((__nothrow__ , __leaf__)); extern long double __ynl (int, long double) __attribute__ ((__nothrow__ , __leaf__));

extern long double erfl (long double) __attribute__ ((__nothrow__ , __leaf__)); extern long double __erfl (long double) __attribute__ ((__nothrow__ , __leaf__));
extern long double erfcl (long double) __attribute__ ((__nothrow__ , __leaf__)); extern long double __erfcl (long double) __attribute__ ((__nothrow__ , __leaf__));
extern long double lgammal (long double) __attribute__ ((__nothrow__ , __leaf__)); extern long double __lgammal (long double) __attribute__ ((__nothrow__ , __leaf__));


extern long double tgammal (long double) __attribute__ ((__nothrow__ , __leaf__)); extern long double __tgammal (long double) __attribute__ ((__nothrow__ , __leaf__));

extern long double gammal (long double) __attribute__ ((__nothrow__ , __leaf__)); extern long double __gammal (long double) __attribute__ ((__nothrow__ , __leaf__));
extern long double lgammal_r (long double, int *__signgamp) __attribute__ ((__nothrow__ , __leaf__)); extern long double __lgammal_r (long double, int *__signgamp) __attribute__ ((__nothrow__ , __leaf__));

extern long double rintl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __rintl (long double __x) __attribute__ ((__nothrow__ , __leaf__));
extern long double nextafterl (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern long double __nextafterl (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern long double nexttowardl (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern long double __nexttowardl (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern long double remainderl (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)); extern long double __remainderl (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__));
extern long double scalbnl (long double __x, int __n) __attribute__ ((__nothrow__ , __leaf__)); extern long double __scalbnl (long double __x, int __n) __attribute__ ((__nothrow__ , __leaf__));
extern int ilogbl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern int __ilogbl (long double __x) __attribute__ ((__nothrow__ , __leaf__));
extern long double scalblnl (long double __x, long int __n) __attribute__ ((__nothrow__ , __leaf__)); extern long double __scalblnl (long double __x, long int __n) __attribute__ ((__nothrow__ , __leaf__));
extern long double nearbyintl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long double __nearbyintl (long double __x) __attribute__ ((__nothrow__ , __leaf__));
extern long double roundl (long double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern long double __roundl (long double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern long double truncl (long double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern long double __truncl (long double __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern long double remquol (long double __x, long double __y, int *__quo) __attribute__ ((__nothrow__ , __leaf__)); extern long double __remquol (long double __x, long double __y, int *__quo) __attribute__ ((__nothrow__ , __leaf__));
extern long int lrintl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long int __lrintl (long double __x) __attribute__ ((__nothrow__ , __leaf__));
__extension__
extern long long int llrintl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long long int __llrintl (long double __x) __attribute__ ((__nothrow__ , __leaf__));
extern long int lroundl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long int __lroundl (long double __x) __attribute__ ((__nothrow__ , __leaf__));
__extension__
extern long long int llroundl (long double __x) __attribute__ ((__nothrow__ , __leaf__)); extern long long int __llroundl (long double __x) __attribute__ ((__nothrow__ , __leaf__));
extern long double fdiml (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)); extern long double __fdiml (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__));
extern long double fmaxl (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern long double __fmaxl (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern long double fminl (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)); extern long double __fminl (long double __x, long double __y) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern int __fpclassifyl (long double __value) __attribute__ ((__nothrow__ , __leaf__))
     __attribute__ ((__const__));
extern int __signbitl (long double __value) __attribute__ ((__nothrow__ , __leaf__))
     __attribute__ ((__const__));
extern long double fmal (long double __x, long double __y, long double __z) __attribute__ ((__nothrow__ , __leaf__)); extern long double __fmal (long double __x, long double __y, long double __z) __attribute__ ((__nothrow__ , __leaf__));

extern long double scalbl (long double __x, long double __n) __attribute__ ((__nothrow__ , __leaf__)); extern long double __scalbl (long double __x, long double __n) __attribute__ ((__nothrow__ , __leaf__));
extern int signgam;
enum
  {
    FP_NAN =
      0,
    FP_INFINITE =
      1,
    FP_ZERO =
      2,
    FP_SUBNORMAL =
      3,
    FP_NORMAL =
      4
  };
typedef enum
{
  _IEEE_ = -1,
  _SVID_,
  _XOPEN_,
  _POSIX_,
  _ISOC_
} _LIB_VERSION_TYPE;
extern _LIB_VERSION_TYPE _LIB_VERSION;
struct exception
  {
    int type;
    char *name;
    double arg1;
    double arg2;
    double retval;
  };
extern int matherr (struct exception *__exc);

extern void __VERIFIER_error() __attribute__ ((__noreturn__));
extern void __VERIFIER_assume() __attribute__ ((__noreturn__));
extern int __VERIFIER_nondet_int() __attribute__ ((__noreturn__));
  int a21 = 7;
  int a15 = 8;
  int a12 = -49;
  int a24 = 1;
 int calculate_output(int input) {
 if(((( 80 < a12 && (a24==1)) && (a15==7)) && (a21==6))){
  error_54: __VERIFIER_assume(0);
  }
  if(((( a12 <= -43 && (a24==1)) && (a15==7)) && (a21==8))){
  error_41: __VERIFIER_assume(0);
  }
  if(((( ((11 < a12) && (80 >= a12)) && (a24==1)) && (a15==5)) && (a21==9))){
  error_12: __VERIFIER_assume(0);
  }
  if(((( a12 <= -43 && (a24==1)) && (a15==5)) && (a21==9))){
  error_2: __VERIFIER_assume(0);
  }
  if(((( ((-43 < a12) && (11 >= a12)) && (a24==1)) && (a15==6)) && (a21==10))){
  error_28: __VERIFIER_assume(0);
  }
  if(((( ((-43 < a12) && (11 >= a12)) && (a24==1)) && (a15==7)) && (a21==6))){
  error_44: __VERIFIER_assume(0);
  }
  if(((( ((-43 < a12) && (11 >= a12)) && (a24==1)) && (a15==5)) && (a21==10))){
  error_8: __VERIFIER_assume(0);
  }
  if(((( a12 <= -43 && (a24==1)) && (a15==6)) && (a21==9))){
  error_22: __VERIFIER_assume(0);
  }
  if(((( 80 < a12 && (a24==1)) && (a15==7)) && (a21==10))){
  error_58: __VERIFIER_assume(0);
  }
  if(((( a12 <= -43 && (a24==1)) && (a15==7)) && (a21==10))){
  error_43: __VERIFIER_assume(0);
  }
  if(((( ((11 < a12) && (80 >= a12)) && (a24==1)) && (a15==6)) && (a21==6))){
  error_29: __VERIFIER_assume(0);
  }
  if(((( 80 < a12 && (a24==1)) && (a15==7)) && (a21==8))){
  error_56: __VERIFIER_assume(0);
  }
  if(((( 80 < a12 && (a24==1)) && (a15==6)) && (a21==9))){
  error_37: __VERIFIER_assume(0);
  }
  if(((( a12 <= -43 && (a24==1)) && (a15==7)) && (a21==7))){
  error_40: __VERIFIER_assume(0);
  }
  if(((( 80 < a12 && (a24==1)) && (a15==5)) && (a21==10))){
  error_18: __VERIFIER_assume(0);
  }
  if(((( ((11 < a12) && (80 >= a12)) && (a24==1)) && (a15==5)) && (a21==8))){
  error_11: __VERIFIER_assume(0);
  }
  if(((( ((11 < a12) && (80 >= a12)) && (a24==1)) && (a15==7)) && (a21==9))){
  error_52: __VERIFIER_assume(0);
  }
  if(((( ((11 < a12) && (80 >= a12)) && (a24==1)) && (a15==6)) && (a21==8))){
  error_31: __VERIFIER_assume(0);
  }
  if(((( ((11 < a12) && (80 >= a12)) && (a24==1)) && (a15==5)) && (a21==10))){
  error_13: __VERIFIER_assume(0);
  }
  if(((( a12 <= -43 && (a24==1)) && (a15==7)) && (a21==6))){
  error_39: __VERIFIER_assume(0);
  }
  if(((( 80 < a12 && (a24==1)) && (a15==5)) && (a21==6))){
  error_14: __VERIFIER_assume(0);
  }
  if(((( 80 < a12 && (a24==1)) && (a15==6)) && (a21==6))){
  error_34: __VERIFIER_assume(0);
  }
  if(((( ((11 < a12) && (80 >= a12)) && (a24==1)) && (a15==5)) && (a21==7))){
  error_10: __VERIFIER_assume(0);
  }
  if(((( ((-43 < a12) && (11 >= a12)) && (a24==1)) && (a15==6)) && (a21==9))){
  error_27: __VERIFIER_assume(0);
  }
  if(((( 80 < a12 && (a24==1)) && (a15==7)) && (a21==9))){
  error_57: __VERIFIER_assume(0);
  }
  if(((( a12 <= -43 && (a24==1)) && (a15==5)) && (a21==6))){
  globalError: __VERIFIER_assume(0);
  }
  if(((( a12 <= -43 && (a24==1)) && (a15==6)) && (a21==10))){
  error_23: __VERIFIER_assume(0);
  }
  if(((( ((-43 < a12) && (11 >= a12)) && (a24==1)) && (a15==7)) && (a21==9))){
  error_47: __VERIFIER_assume(0);
  }
  if(((( a12 <= -43 && (a24==1)) && (a15==6)) && (a21==8))){
  error_21: __VERIFIER_assume(0);
  }
  if(((( ((11 < a12) && (80 >= a12)) && (a24==1)) && (a15==7)) && (a21==8))){
  error_51: __VERIFIER_assume(0);
  }
  if(((( ((-43 < a12) && (11 >= a12)) && (a24==1)) && (a15==7)) && (a21==7))){
  error_45: __VERIFIER_assume(0);
  }
  if(((( ((11 < a12) && (80 >= a12)) && (a24==1)) && (a15==7)) && (a21==7))){
  error_50: __VERIFIER_assume(0);
  }
  if(((( ((-43 < a12) && (11 >= a12)) && (a24==1)) && (a15==7)) && (a21==10))){
  error_48: __VERIFIER_assume(0);
  }
  if(((( ((-43 < a12) && (11 >= a12)) && (a24==1)) && (a15==7)) && (a21==8))){
  error_46: __VERIFIER_assume(0);
  }
  if(((( a12 <= -43 && (a24==1)) && (a15==8)) && (a21==6))){
  error_59: __VERIFIER_assume(0);
  }
  if(((( ((-43 < a12) && (11 >= a12)) && (a24==1)) && (a15==6)) && (a21==6))){
  error_24: __VERIFIER_assume(0);
  }
  if(((( a12 <= -43 && (a24==1)) && (a15==7)) && (a21==9))){
  error_42: __VERIFIER_assume(0);
  }
  if(((( ((11 < a12) && (80 >= a12)) && (a24==1)) && (a15==6)) && (a21==7))){
  error_30: __VERIFIER_assume(0);
  }
  if(((( 80 < a12 && (a24==1)) && (a15==6)) && (a21==7))){
  error_35: __VERIFIER_assume(0);
  }
  if(((( ((11 < a12) && (80 >= a12)) && (a24==1)) && (a15==5)) && (a21==6))){
  error_9: __VERIFIER_assume(0);
  }
  if(((( 80 < a12 && (a24==1)) && (a15==5)) && (a21==8))){
  error_16: __VERIFIER_assume(0);
  }
  if(((( ((-43 < a12) && (11 >= a12)) && (a24==1)) && (a15==5)) && (a21==9))){
  error_7: __VERIFIER_assume(0);
  }
  if(((( 80 < a12 && (a24==1)) && (a15==6)) && (a21==8))){
  error_36: __VERIFIER_assume(0);
  }
  if(((( ((11 < a12) && (80 >= a12)) && (a24==1)) && (a15==7)) && (a21==10))){
  error_53: __VERIFIER_assume(0);
  }
  if(((( 80 < a12 && (a24==1)) && (a15==6)) && (a21==10))){
  error_38: __VERIFIER_assume(0);
  }
  if(((( a12 <= -43 && (a24==1)) && (a15==5)) && (a21==10))){
  error_3: __VERIFIER_assume(0);
  }
  if(((( ((-43 < a12) && (11 >= a12)) && (a24==1)) && (a15==5)) && (a21==6))){
  error_4: __VERIFIER_assume(0);
  }
  if(((( a12 <= -43 && (a24==1)) && (a15==5)) && (a21==7))){
  error_0: __VERIFIER_assume(0);
  }
  if(((( a12 <= -43 && (a24==1)) && (a15==5)) && (a21==8))){
  error_1: __VERIFIER_assume(0);
  }
  if(((( ((11 < a12) && (80 >= a12)) && (a24==1)) && (a15==6)) && (a21==9))){
  error_32: __VERIFIER_assume(0);
  }
  if(((( 80 < a12 && (a24==1)) && (a15==5)) && (a21==9))){
  error_17: __VERIFIER_assume(0);
  }
  if(((( 80 < a12 && (a24==1)) && (a15==7)) && (a21==7))){
  error_55: __VERIFIER_assume(0);
  }
  if(((( ((11 < a12) && (80 >= a12)) && (a24==1)) && (a15==6)) && (a21==10))){
  error_33: __VERIFIER_assume(0);
  }
  if(((( ((11 < a12) && (80 >= a12)) && (a24==1)) && (a15==7)) && (a21==6))){
  error_49: __VERIFIER_assume(0);
  }
  if(((( a12 <= -43 && (a24==1)) && (a15==6)) && (a21==7))){
  error_20: __VERIFIER_assume(0);
  }
  if(((( ((-43 < a12) && (11 >= a12)) && (a24==1)) && (a15==5)) && (a21==8))){
  error_6: __VERIFIER_assume(0);
  }
  if(((( a12 <= -43 && (a24==1)) && (a15==6)) && (a21==6))){
  error_19: __VERIFIER_assume(0);
  }
  if(((( ((-43 < a12) && (11 >= a12)) && (a24==1)) && (a15==5)) && (a21==7))){
  error_5: __VERIFIER_assume(0);
  }
  if(((( ((-43 < a12) && (11 >= a12)) && (a24==1)) && (a15==6)) && (a21==7))){
  error_25: __VERIFIER_assume(0);
  }
  if(((( 80 < a12 && (a24==1)) && (a15==5)) && (a21==7))){
  error_15: __VERIFIER_assume(0);
  }
  if(((( ((-43 < a12) && (11 >= a12)) && (a24==1)) && (a15==6)) && (a21==8))){
  error_26: __VERIFIER_assume(0);
  }
     if((((a24==1) && ( ((11 < a12) && (80 >= a12)) && ((input == 5) && (a15==8)))) && (a21==9))){
      a12 = ((((a12 + 555500) * -1)/ 10) * 5);
       a15 = 5;
       a21 = 6;
       return -1;
     } else if((((a15==9) && ((((a21==9) || ((a21==7) || (a21==8))) && (input == 5)) && a12 <= -43 )) && (a24==1))){
       a15 = 5;
       a21 = 6;
       return -1;
     } else if(((a15==9) && (( ((-43 < a12) && (11 >= a12)) && ((a24==1) && (input == 2))) && (a21==8)))){
      a12 = (((a12 - -571629) / 5) + -404132);
       a15 = 5;
       a21 = 6;
       return -1;
     } else if(((a24==1) && ((a15==8) && ( ((11 < a12) && (80 >= a12)) && ((input == 1) && ((a21==7) || (a21==8))))))){
      a12 = (((a12 - 268644) + -323718) + -3883);
       a15 = 5;
       a21 = 6;
       return -1;
     } else if((((((a21==10) && ( 80 < a12 && (a15==8))) || (((a15==9) && a12 <= -43 ) && (a21==6))) && (input == 2)) && (a24==1))){
      a12 = (((a12 / 5) + -345781) / 5);
       a15 = 5;
       a21 = 6;
       return -1;
     } else if(((a24==1) && ((a15==9) && ((((a21==6) && 80 < a12 ) || (((a21==9) && ((11 < a12) && (80 >= a12)) ) || ( ((11 < a12) && (80 >= a12)) && (a21==10)))) && (input == 5))))){
      a12 = (((((a12 % 34)+ 23) - -139662) - 547970) - -408298);
       a15 = 6;
       a21 = 6;
       return -1;
     } else if((( a12 <= -43 && ((((a21==9) || ((a21==7) || (a21==8))) && (input == 4)) && (a24==1))) && (a15==9))){
       a15 = 5;
       a21 = 6;
       return -1;
     } else if((((((input == 2) && (a24==1)) && ((11 < a12) && (80 >= a12)) ) && (a21==9)) && (a15==8))){
      a12 = (((a12 - -334333) + 32000) / 5);
       a21 = 8;
       return 22;
     } else if(((((( ((-43 < a12) && (11 >= a12)) && (a21==10)) || ( ((11 < a12) && (80 >= a12)) && (a21==6))) && (input == 2)) && (a24==1)) && (a15==8))){
      a12 = ((((a12 - 438298) * 1) + 564710) - 684902);
       a15 = 5;
       a21 = 6;
       return -1;
     } else if(((a15==9) && (((input == 1) && ((( a12 <= -43 && (a21==10)) || ((a21==6) && ((-43 < a12) && (11 >= a12)) )) || ( ((-43 < a12) && (11 >= a12)) && (a21==7)))) && (a24==1)))){
      a12 = ((((a12 % 299978)+ -300020) * 1) - 3);
       a15 = 5;
       a21 = 6;
       return -1;
     } else if((((a24==1) && (((input == 6) && ((a21==7) || (a21==8))) && 80 < a12 )) && (a15==9))){
       a21 = 9;
       return 26;
     } else if(( ((-43 < a12) && (11 >= a12)) && ((a15==9) && ((a24==1) && (((a21==9) || (a21==10)) && (input == 2)))))){
       a15 = 6;
       a21 = 9;
       return -1;
     } else if((((((input == 5) && (a15==8)) && ((-43 < a12) && (11 >= a12)) ) && (a21==9)) && (a24==1))){
       a21 = 10;
       return 24;
     } else if((( 80 < a12 && ((a15==8) && (((a21==8) || (a21==9)) && (input == 3)))) && (a24==1))){
      a12 = ((((a12 * -6)/ 10) - 40423) + -165586);
       a15 = 5;
       a21 = 6;
       return -1;
     } else if(((input == 4) && ((((a15==9) && ((a24==1) && 80 < a12 )) && (a21==10)) || ((a21==6) && ((a15==5) && ((a24==2) && a12 <= -43 )))))){
      a12 = ((((a12 / 5) % 26)+ -16) + 1);
       a24 = 1;
       a15 = 6;
       a21 = 10;
       return -1;
     } else if(((((a24==1) && ((input == 3) && a12 <= -43 )) && (a21==7)) && (a15==8))){
       a15 = 5;
       a21 = 6;
       return -1;
     } else if(((a24==1) && (((( 80 < a12 && (a15==8)) && (a21==10)) || (((a15==9) && a12 <= -43 ) && (a21==6))) && (input == 3)))){
      a12 = ((((a12 - 0) - 0) / 5) + -200550);
       a15 = 5;
       a21 = 6;
       return -1;
     } else if((((a24==1) && ((a15==9) && (((a21==7) || (a21==8)) && (input == 3)))) && 80 < a12 )){
      a12 = ((((a12 * 9)/ 10) / 5) + -505559);
       a15 = 7;
       a21 = 10;
       return -1;
     } else if((((((((a21==8) || (a21==9)) || (a21==10)) && (input == 5)) && a12 <= -43 ) && (a15==8)) && (a24==1))){
       a15 = 5;
       a21 = 6;
       return -1;
     } else if(((((a15==9) && ((input == 1) && (a21==8))) && (a24==1)) && ((-43 < a12) && (11 >= a12)) )){
      a12 = (((a12 + -386239) - 148442) - -217864);
       a15 = 5;
       a21 = 6;
       return -1;
     } else if((((((((a21==8) || (a21==9)) || (a21==10)) && (input == 3)) && (a15==8)) && a12 <= -43 ) && (a24==1))){
       a15 = 5;
       a21 = 6;
       return -1;
     } else if(((a24==1) && (((a15==8) && ((input == 1) && (a21==9))) && ((11 < a12) && (80 >= a12)) ))){
      a12 = (((a12 / 5) + -16723) / 5);
       a15 = 5;
       a21 = 6;
       return -1;
     } else if(((a15==9) && ( 80 < a12 && ((a24==1) && (((a21==7) || (a21==8)) && (input == 4)))))){
       a15 = 7;
       a21 = 10;
       return -1;
     } else if(( 80 < a12 && ((a15==9) && (((input == 2) && ((a21==7) || (a21==8))) && (a24==1))))){
      a12 = (((((a12 * 9)/ 10) / 5) * 10)/ -3);
       a15 = 6;
       a21 = 9;
       return -1;
     } else if((((((input == 6) && ((11 < a12) && (80 >= a12)) ) && (a21==9)) && (a15==8)) && (a24==1))){
      a12 = (((a12 + -285349) + -46510) + -209836);
       a15 = 5;
       a21 = 6;
       return -1;
     } else if(((((a24==1) && ((input == 1) && ((a21==8) || ((a21==6) || (a21==7))))) && (a15==9)) && ((11 < a12) && (80 >= a12)) )){
       a15 = 6;
       a21 = 8;
       return -1;
     } else if(((((a21==10) && (( 80 < a12 && (a24==1)) && (a15==9))) || (((a15==5) && ((a24==2) && a12 <= -43 )) && (a21==6))) && (input == 3))){
      a12 = ((((a12 % 26)- 15) + 426288) + -426288);
       a24 = 1;
       a15 = 7;
       a21 = 6;
       return -1;
     } else if(((((((a21==7) && ((-43 < a12) && (11 >= a12)) ) || (((a21==10) && a12 <= -43 ) || ( ((-43 < a12) && (11 >= a12)) && (a21==6)))) && (input == 5)) && (a24==1)) && (a15==9))){
      a12 = ((((a12 % 299978)- 300020) + -1) + -1);
       a15 = 5;
       a21 = 6;
       return -1;
     } else if((((((input == 1) && (((a21==7) || (a21==8)) || (a21==9))) && (a15==9)) && a12 <= -43 ) && (a24==1))){
       a15 = 5;
       a21 = 6;
       return -1;
     } else if(((a15==9) && ((a24==1) && (((input == 6) && ((-43 < a12) && (11 >= a12)) ) && (a21==8))))){
      a12 = (((a12 * 5) / 5) + -316852);
       a15 = 5;
       a21 = 6;
       return -1;
     } else if((((a24==1) && ((a15==9) && ((input == 5) && ((a21==8) || ((a21==6) || (a21==7)))))) && ((11 < a12) && (80 >= a12)) )){
       a15 = 5;
       a21 = 8;
       return -1;
     } else if(((((a15==8) && ((((a21==6) || (a21==7)) || (a21==8)) && (input == 5))) && ((-43 < a12) && (11 >= a12)) ) && (a24==1))){
      a12 = (((a12 - 529036) / 5) * 5);
       a15 = 5;
       a21 = 6;
       return -1;
     } else if(((a15==9) && ((((input == 3) && (((a21==6) || (a21==7)) || (a21==8))) && (a24==1)) && ((11 < a12) && (80 >= a12)) ))){
      a12 = ((((((a12 * 10)/ -2) * 5) - -29976) * -1)/ 10);
       a15 = 7;
       a21 = 6;
       return -1;
     } else if((( ((-43 < a12) && (11 >= a12)) && ((a15==8) && (((a21==8) || ((a21==6) || (a21==7))) && (input == 3)))) && (a24==1))){
      a12 = (((a12 - 239513) * 2) - 118149);
       a15 = 5;
       a21 = 6;
       return -1;
     } else if(((a15==9) && ((a24==1) && ((((a21==9) || (a21==10)) && (input == 5)) && ((-43 < a12) && (11 >= a12)) )))){
      a12 = (((a12 + -382503) - -833715) - -74843);
       a15 = 5;
       a21 = 6;
       return -1;
     } else if(( ((11 < a12) && (80 >= a12)) && (((a24==1) && ((((a21==6) || (a21==7)) || (a21==8)) && (input == 4))) && (a15==9)))){
       a15 = 5;
       a21 = 10;
       return -1;
     } else if(((a15==9) && ((a24==1) && (((input == 6) && 80 < a12 ) && (a21==9))))){
      a12 = (((((a12 - 600066) * 1) / 5) * 34)/ 10);
       a15 = 7;
       a21 = 8;
       return -1;
     } else if((((a24==1) && (((input == 2) && ((a21==10) || ((a21==8) || (a21==9)))) && a12 <= -43 )) && (a15==8))){
       a15 = 5;
       a21 = 6;
       return -1;
     } else if(((a24==1) && (((input == 4) && (( ((-43 < a12) && (11 >= a12)) && (a21==7)) || (( a12 <= -43 && (a21==10)) || ( ((-43 < a12) && (11 >= a12)) && (a21==6))))) && (a15==9)))){
      a12 = (((((a12 % 299978)+ -300020) - 3) - -109194) + -109193);
       a15 = 5;
       a21 = 6;
       return -1;
     } else if((((((input == 6) && ((a21==9) || ((a21==7) || (a21==8)))) && (a24==1)) && (a15==9)) && a12 <= -43 )){
       a15 = 5;
       a21 = 6;
       return -1;
     } else if(((( a12 <= -43 && ((input == 6) && ((a21==10) || ((a21==8) || (a21==9))))) && (a24==1)) && (a15==8))){
      a12 = ((((a12 % 26)+ -1) / 5) / 5);
       a21 = 7;
       return 25;
     } else if((((((a21==7) && (input == 5)) && a12 <= -43 ) && (a24==1)) && (a15==8))){
       a21 = 10;
       return 22;
     } else if((((a15==9) && ((((a21==9) || (a21==10)) && (input == 4)) && ((-43 < a12) && (11 >= a12)) )) && (a24==1))){
      a12 = (((a12 / 5) + 176111) * 3);
       a15 = 7;
       a21 = 9;
       return -1;
     } else if(((((( 80 < a12 && (a24==1)) && (a15==9)) && (a21==10)) || ((( a12 <= -43 && (a24==2)) && (a15==5)) && (a21==6))) && (input == 2))){
      a12 = (((((a12 % 299959)- -300039) / 5) / 5) + 204292);
       a24 = 1;
       a15 = 9;
       a21 = 9;
       return -1;
     } else if(((( ((-43 < a12) && (11 >= a12)) && (((a21==9) || (a21==10)) && (input == 3))) && (a15==9)) && (a24==1))){
      a12 = (((a12 + 66) - 3) + -2);
       a21 = 8;
       return 21;
     } else if((((a15==8) && ( 80 < a12 && (((a21==8) || (a21==9)) && (input == 6)))) && (a24==1))){
      a12 = ((((a12 + 0) * 9)/ 10) - 558346);
       a15 = 5;
       a21 = 6;
       return -1;
     } else if((((((( a12 <= -43 && (a21==10)) || ( ((-43 < a12) && (11 >= a12)) && (a21==6))) || ((a21==7) && ((-43 < a12) && (11 >= a12)) )) && (input == 3)) && (a24==1)) && (a15==9))){
      a12 = (((a12 + 101173) / 5) - 185122);
       a15 = 5;
       a21 = 6;
       return -1;
     } else if(((a24==1) && ((input == 1) && (((a21==10) && ((a15==8) && 80 < a12 )) || (( a12 <= -43 && (a15==9)) && (a21==6)))))){
      a12 = ((((a12 % 299978)+ -300020) * 1) - 2);
       a15 = 5;
       a21 = 6;
       return -1;
     } else if((( ((-43 < a12) && (11 >= a12)) && ((a24==1) && (((a21==8) || ((a21==6) || (a21==7))) && (input == 1)))) && (a15==8))){
       a21 = 9;
       return 21;
     } else if((((a24==1) && ( a12 <= -43 && ((((a21==7) || (a21==8)) || (a21==9)) && (input == 3)))) && (a15==9))){
       a21 = 10;
       return 22;
     } else if((((a24==1) && ((input == 4) && ((((a21==9) && ((11 < a12) && (80 >= a12)) ) || ((a21==10) && ((11 < a12) && (80 >= a12)) )) || ((a21==6) && 80 < a12 )))) && (a15==9))){
      a12 = (((((a12 * 9)/ 10) - 589907) - -649897) + -606113);
       a15 = 7;
       a21 = 7;
       return -1;
     } else if(((a15==8) && (((a21==7) && ((input == 2) && (a24==1))) && a12 <= -43 ))){
       a15 = 5;
       a21 = 6;
       return -1;
     } else if(((a15==8) && (((input == 4) && (( ((-43 < a12) && (11 >= a12)) && (a21==10)) || ((a21==6) && ((11 < a12) && (80 >= a12)) ))) && (a24==1)))){
      a12 = ((((a12 - 357209) * 1) - -928336) - 1022569);
       a15 = 5;
       a21 = 6;
       return -1;
     } else if(((a15==9) && (( a12 <= -43 && (((a21==9) || ((a21==7) || (a21==8))) && (input == 2))) && (a24==1)))){
       a15 = 5;
       a21 = 6;
       return -1;
     } else if(((a24==1) && ((a15==8) && ((((a21==10) && ((-43 < a12) && (11 >= a12)) ) || ( ((11 < a12) && (80 >= a12)) && (a21==6))) && (input == 3))))){
      a12 = (((a12 + 60189) + -305530) + -244668);
       a15 = 5;
       a21 = 6;
       return -1;
     } else if((((a15==8) && (((a24==1) && (input == 4)) && ((11 < a12) && (80 >= a12)) )) && (a21==9))){
      a12 = (((a12 - 310903) + -128009) + -1314);
       a15 = 5;
       a21 = 6;
       return -1;
     } else if(((((input == 6) && ((( ((11 < a12) && (80 >= a12)) && (a21==9)) || ( ((11 < a12) && (80 >= a12)) && (a21==10))) || ( 80 < a12 && (a21==6)))) && (a24==1)) && (a15==9))){
      a12 = ((((a12 % 299959)- -81) - -194202) - -92066);
       a21 = 7;
       return 26;
     } else if((((a15==8) && ((((a21==10) && ((-43 < a12) && (11 >= a12)) ) || ( ((11 < a12) && (80 >= a12)) && (a21==6))) && (input == 6))) && (a24==1))){
      a12 = (((a12 / 5) - 557506) - 18416);
       a15 = 5;
       a21 = 6;
       return -1;
     } else if(((((a24==1) && (((a21==8) || ((a21==6) || (a21==7))) && (input == 2))) && (a15==9)) && ((11 < a12) && (80 >= a12)) )){
      a12 = ((((a12 - -582271) - 436382) - 442400) - -391873);
       a21 = 6;
       return 22;
     } else if((((a21==9) && (((input == 3) && (a24==1)) && 80 < a12 )) && (a15==9))){
       return -1;
     } else if(((((((a21==7) || (a21==8)) && (input == 1)) && (a15==9)) && 80 < a12 ) && (a24==1))){
      a12 = ((((a12 / 5) % 26)+ -33) / 5);
       a15 = 5;
       a21 = 10;
       return -1;
     } else if((((((a15==9) && ( 80 < a12 && (a24==1))) && (a21==10)) || ((a21==6) && (((a24==2) && a12 <= -43 ) && (a15==5)))) && (input == 6))){
      a12 = (((((a12 % 299959)- -300039) + -252537) * 1) - -252539);
       a24 = 1;
       a15 = 9;
       a21 = 7;
       return -1;
     } else if(((a15==9) && ((a21==9) && ( 80 < a12 && ((input == 2) && (a24==1)))))){
       a21 = 8;
       return -1;
     } else if(((((a15==8) && (((a21==7) || (a21==8)) && (input == 3))) && (a24==1)) && ((11 < a12) && (80 >= a12)) )){
      a12 = ((((a12 / 5) + -439847) * 10)/ 9);
       a15 = 5;
       a21 = 6;
       return -1;
     } else if(((a24==1) && ((input == 5) && ((((a15==8) && 80 < a12 ) && (a21==10)) || ((a21==6) && ( a12 <= -43 && (a15==9))))))){
      a12 = ((((a12 % 299959)- -300039) * 1) * 1);
       a15 = 8;
       a21 = 10;
       return 26;
     } else if(((a24==1) && (((( 80 < a12 && (a21==6)) || (((a21==9) && ((11 < a12) && (80 >= a12)) ) || ((a21==10) && ((11 < a12) && (80 >= a12)) ))) && (input == 1)) && (a15==9)))){
      a12 = (((((a12 * 9)/ 10) * 1) + -581502) + 599190);
       a15 = 7;
       a21 = 8;
       return -1;
     } else if((((a24==1) && ( a12 <= -43 && ((((a21==8) || (a21==9)) || (a21==10)) && (input == 1)))) && (a15==8))){
       a15 = 5;
       a21 = 6;
       return -1;
     } else if(((a24==1) && (((((a21==7) && ((-43 < a12) && (11 >= a12)) ) || (((a21==10) && a12 <= -43 ) || ((a21==6) && ((-43 < a12) && (11 >= a12)) ))) && (input == 6)) && (a15==9)))){
      a12 = ((((a12 % 299978)+ -300020) / 5) + -174067);
       a15 = 5;
       a21 = 6;
       return -1;
     } else if(((a15==8) && (((a24==1) && ((((a21==6) || (a21==7)) || (a21==8)) && (input == 2))) && ((-43 < a12) && (11 >= a12)) ))){
      a12 = (((((a12 - 185217) - 149574) - -494599) * -1)/ 10);
       a15 = 5;
       a21 = 6;
       return -1;
     } else if((((((input == 6) && (((a21==6) || (a21==7)) || (a21==8))) && (a15==8)) && (a24==1)) && ((-43 < a12) && (11 >= a12)) )){
      a12 = (((a12 * 5) - 432359) / 5);
       a15 = 5;
       a21 = 6;
       return -1;
     } else if(((a24==1) && (((((a21==7) || (a21==8)) && (input == 6)) && (a15==8)) && ((11 < a12) && (80 >= a12)) ))){
      a12 = ((((a12 / 5) - 526582) * 10)/ 9);
       a15 = 5;
       a21 = 6;
       return -1;
     } else if(((((( ((-43 < a12) && (11 >= a12)) && (a21==7)) || (((a21==10) && a12 <= -43 ) || ( ((-43 < a12) && (11 >= a12)) && (a21==6)))) && (input == 2)) && (a15==9)) && (a24==1))){
      a12 = (((((a12 % 26)- 16) + 343661) - 46416) - 297244);
       a21 = 8;
       return 25;
     } else if((( ((-43 < a12) && (11 >= a12)) && (((input == 1) && (a15==8)) && (a24==1))) && (a21==9))){
      a12 = (((a12 * 5) * 5) + -84619);
       a15 = 5;
       a21 = 6;
       return -1;
     } else if(((a24==1) && ((a15==9) && ((input == 2) && (( 80 < a12 && (a21==6)) || (( ((11 < a12) && (80 >= a12)) && (a21==9)) || ( ((11 < a12) && (80 >= a12)) && (a21==10)))))))){
      a12 = ((((a12 % 299959)- -81) * 1) * 1);
       a15 = 6;
       a21 = 9;
       return -1;
     } else if(((a24==1) && ((a15==8) && (((input == 2) && ((a21==7) || (a21==8))) && ((11 < a12) && (80 >= a12)) )))){
      a12 = ((((a12 + -453921) * 10)/ 9) - 34620);
       a15 = 5;
       a21 = 6;
       return -1;
     } else if(((a24==1) && ((a21==9) && (((input == 5) && (a15==9)) && 80 < a12 )))){
       a15 = 7;
       a21 = 6;
       return -1;
     } else if((( a12 <= -43 && (((input == 1) && (a21==7)) && (a24==1))) && (a15==8))){
       a15 = 5;
       a21 = 6;
       return -1;
     } else if((((a21==9) && (( ((11 < a12) && (80 >= a12)) && (input == 3)) && (a24==1))) && (a15==8))){
      a12 = (((a12 - -195021) - 451510) / 5);
       a15 = 5;
       a21 = 6;
       return -1;
     } else if((((a15==8) && ((((a21==8) || (a21==9)) && (input == 2)) && (a24==1))) && 80 < a12 )){
      a12 = ((((a12 * 9)/ 10) + -545656) * 1);
       a15 = 5;
       a21 = 6;
       return -1;
     } else if((( 80 < a12 && ((a24==1) && (((a21==8) || (a21==9)) && (input == 4)))) && (a15==8))){
      a12 = ((((a12 * 9)/ 10) + -562768) / 5);
       a15 = 5;
       a21 = 6;
       return -1;
     } else if(((a21==9) && ((a15==9) && ((a24==1) && ( 80 < a12 && (input == 1)))))){
       return 26;
     } else if(((a15==8) && (((input == 3) && ((((a21==10) && ((11 < a12) && (80 >= a12)) ) || ((a21==6) && 80 < a12 )) || ( 80 < a12 && (a21==7)))) && (a24==1)))){
      a12 = ((((a12 % 299978)+ -300020) + -247081) * 1);
       a15 = 5;
       a21 = 6;
       return -1;
     } else if(((a24==1) && ( 80 < a12 && ((a21==9) && ((a15==9) && (input == 4)))))){
      a12 = ((((a12 + 0) + -318749) % 34)+ 45);
       a15 = 5;
       return -1;
     } else if(((a15==8) && (((input == 6) && (( 80 < a12 && (a21==7)) || (((a21==10) && ((11 < a12) && (80 >= a12)) ) || ( 80 < a12 && (a21==6))))) && (a24==1)))){
      a12 = ((((a12 % 299978)- 300020) - 166783) * 1);
       a15 = 5;
       a21 = 6;
       return -1;
     } else if(((a15==9) && ((a24==1) && ( ((-43 < a12) && (11 >= a12)) && ((input == 1) && ((a21==9) || (a21==10))))))){
      a12 = (((((a12 - -56) * 9)/ 10) / 5) + 56);
       a15 = 5;
       a21 = 7;
       return -1;
     } else if(((((( 80 < a12 && (a15==8)) && (a21==10)) || ((a21==6) && ((a15==9) && a12 <= -43 ))) && (input == 6)) && (a24==1))){
      a12 = ((((a12 % 299978)- 300020) * 1) + -2);
       a15 = 5;
       a21 = 6;
       return -1;
     } else if(((((a15==8) && (((a21==8) || (a21==9)) && (input == 1))) && (a24==1)) && 80 < a12 )){
      a12 = ((((a12 - 94512) / 5) / 5) + -533466);
       a15 = 5;
       a21 = 6;
       return -1;
     } else if((((a24==1) && ((((a21==7) && 80 < a12 ) || (( ((11 < a12) && (80 >= a12)) && (a21==10)) || ((a21==6) && 80 < a12 ))) && (input == 2))) && (a15==8))){
      a12 = ((((a12 % 299978)- 300020) + 525887) + -618409);
       a15 = 5;
       a21 = 6;
       return -1;
     } else if(((a24==1) && ( ((-43 < a12) && (11 >= a12)) && (((((a21==6) || (a21==7)) || (a21==8)) && (input == 4)) && (a15==8))))){
      a12 = ((((a12 - 87828) * 10)/ 9) - 284434);
       a15 = 5;
       a21 = 6;
       return -1;
     } else if((((a15==8) && (((a21==7) && (input == 4)) && (a24==1))) && a12 <= -43 )){
       a15 = 5;
       a21 = 6;
       return -1;
     } else if(((a21==9) && (((a24==1) && ((input == 2) && ((-43 < a12) && (11 >= a12)) )) && (a15==8)))){
      a12 = (((a12 - -61) - -3) - -1);
       a21 = 8;
       return 26;
     } else if(((a15==8) && (( ((-43 < a12) && (11 >= a12)) && ((a21==9) && (input == 4))) && (a24==1)))){
      a12 = (((a12 + -564241) - 3500) * 1);
       a15 = 5;
       a21 = 6;
       return -1;
     } else if((( a12 <= -43 && ((((a21==10) || ((a21==8) || (a21==9))) && (input == 4)) && (a15==8))) && (a24==1))){
       a15 = 5;
       a21 = 6;
       return -1;
     } else if(((a24==1) && ((a15==8) && ((input == 4) && (( 80 < a12 && (a21==7)) || (( ((11 < a12) && (80 >= a12)) && (a21==10)) || ( 80 < a12 && (a21==6)))))))){
      a12 = (((((a12 % 299959)- -81) * 1) / 5) + 165863);
       a21 = 10;
       return 22;
     } else if(( ((11 < a12) && (80 >= a12)) && ((a15==8) && ((a24==1) && (((a21==7) || (a21==8)) && (input == 4)))))){
      a12 = (((a12 + -256944) - 53297) - 113637);
       a15 = 5;
       a21 = 6;
       return -1;
     } else if(((((((a15==8) && 80 < a12 ) && (a21==10)) || ((a21==6) && ( a12 <= -43 && (a15==9)))) && (input == 4)) && (a24==1))){
      a12 = (((a12 / 5) + -409994) + 99019);
       a15 = 5;
       a21 = 6;
       return -1;
     } else if(((((( 80 < a12 && (a24==1)) && (a15==9)) && (a21==10)) || ((( a12 <= -43 && (a24==2)) && (a15==5)) && (a21==6))) && (input == 1))){
      a12 = ((((((a12 % 299978)- 300020) / 5) + 194993) * -1)/ 10);
       a24 = 1;
       a15 = 5;
       a21 = 9;
       return -1;
     } else if((((a15==8) && (((( ((11 < a12) && (80 >= a12)) && (a21==10)) || ( 80 < a12 && (a21==6))) || ( 80 < a12 && (a21==7))) && (input == 5))) && (a24==1))){
      a12 = (((((a12 + -334090) % 299978)+ -300020) / 5) + -383582);
       a15 = 5;
       a21 = 6;
       return -1;
     } else if(((a21==9) && ((((input == 6) && (a15==8)) && ((-43 < a12) && (11 >= a12)) ) && (a24==1)))){
      a12 = (((((a12 + 423400) * 1) * 1) * -1)/ 10);
       a15 = 5;
       a21 = 6;
       return -1;
     } else if(((a24==1) && ((a21==9) && ( ((-43 < a12) && (11 >= a12)) && ((a15==8) && (input == 3)))))){
      a12 = (((a12 + -295946) + -243936) * 1);
       a15 = 5;
       a21 = 6;
       return -1;
     } else if(((a15==9) && (((input == 3) && (((a21==6) && 80 < a12 ) || (((a21==9) && ((11 < a12) && (80 >= a12)) ) || ((a21==10) && ((11 < a12) && (80 >= a12)) )))) && (a24==1)))){
      a12 = ((((((a12 % 299959)+ 81) - 332928) / 5) * -1)/ 10);
       a15 = 5;
       a21 = 10;
       return -1;
     } else if(( a12 <= -43 && ((a21==7) && ((a24==1) && ((a15==8) && (input == 6)))))){
       a15 = 5;
       a21 = 6;
       return -1;
     } else if(( ((-43 < a12) && (11 >= a12)) && ((((input == 3) && (a24==1)) && (a21==8)) && (a15==9)))){
      a12 = (((a12 * 5) - 497532) - 56570);
       a15 = 5;
       a21 = 6;
       return -1;
     } else if((((((a15==9) && ((a24==1) && 80 < a12 )) && (a21==10)) || ((((a24==2) && a12 <= -43 ) && (a15==5)) && (a21==6))) && (input == 5))){
      a12 = (((((a12 + 0) % 299978)+ -300020) / 5) + -262569);
       a24 = 2;
       a15 = 5;
       a21 = 6;
       return 25;
     } else if((((a24==1) && ( ((11 < a12) && (80 >= a12)) && (((a21==7) || (a21==8)) && (input == 5)))) && (a15==8))){
      a12 = (((((a12 * 68)/ 10) * 5) + -454858) + 972700);
       a21 = 6;
       return 25;
     } else if(((((((a21==10) && ((-43 < a12) && (11 >= a12)) ) || ( ((11 < a12) && (80 >= a12)) && (a21==6))) && (input == 1)) && (a15==8)) && (a24==1))){
      a12 = (((a12 + -298811) + -140133) + -153332);
       a15 = 5;
       a21 = 6;
       return -1;
     } else if(((a24==1) && ( ((11 < a12) && (80 >= a12)) && (((((a21==6) || (a21==7)) || (a21==8)) && (input == 6)) && (a15==9))))){
       a15 = 7;
       a21 = 9;
       return -1;
     } else if(((a24==1) && (((((a21==7) && 80 < a12 ) || (( ((11 < a12) && (80 >= a12)) && (a21==10)) || ( 80 < a12 && (a21==6)))) && (input == 1)) && (a15==8)))){
      a12 = ((((a12 + 0) % 299978)+ -300020) * 1);
       a15 = 5;
       a21 = 6;
       return -1;
     } else if((((a15==8) && ((((a21==10) && ((-43 < a12) && (11 >= a12)) ) || ( ((11 < a12) && (80 >= a12)) && (a21==6))) && (input == 5))) && (a24==1))){
      a12 = (((((a12 - -338613) - -126296) * 1) % 34)- -42);
       a21 = 9;
       return 25;
     } else if((( ((-43 < a12) && (11 >= a12)) && (((input == 6) && ((a21==9) || (a21==10))) && (a24==1))) && (a15==9))){
      a12 = ((((((a12 - -277912) * 10)/ 9) - 437300) * -1)/ 10);
       a15 = 6;
       a21 = 6;
       return -1;
     } else if(((a15==8) && ( 80 < a12 && ((a24==1) && (((a21==8) || (a21==9)) && (input == 5)))))){
      a12 = (((a12 + -600079) - -316691) - 316661);
       a15 = 9;
       a21 = 8;
       return 26;
     } else if((((a24==1) && ((a15==9) && (((a21==7) || (a21==8)) && (input == 5)))) && 80 < a12 )){
       a21 = 10;
       return 25;
     } else if((((((input == 5) && ((-43 < a12) && (11 >= a12)) ) && (a21==8)) && (a24==1)) && (a15==9))){
      a12 = (((a12 / 5) - 440689) * 1);
       a15 = 5;
       a21 = 6;
       return -1;
     } else if(((a15==9) && ((((input == 4) && (a24==1)) && (a21==8)) && ((-43 < a12) && (11 >= a12)) ))){
       a21 = 10;
       return 22;
     }
     return -2;
 }
int input, output;
int main()
{
    output = -1;
    while(1)
    {
        input = __VERIFIER_nondet_int();
  __VERIFIER_assume(input >= 1 && input <= 6);
        output = calculate_output(input);
    }
}
