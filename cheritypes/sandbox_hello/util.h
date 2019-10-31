

#define PRINT_PCC_IDC_DDC \
do{ \
  printf("\nthe PCC is:\n\t"); \
  CHERI_CAP_PRINT(cheri_getpcc()); \
  printf("\nthe IDC is:\n"); \
  CHERI_CAP_PRINT(cheri_getidc()); \
  printf("\nthe DDC is:\n"); \
  CHERI_CAP_PRINT(cheri_getdefault()); \
}while (0)

