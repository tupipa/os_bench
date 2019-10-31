


extern void    sandbox_creturn(void);
extern void    sandbox_creturn_end;
//extern void __attribute__ ((cheri_ccallee)) sandbox_invoke(void * __capability c1, void* __capability c2);
extern void __attribute__ ((cheri_ccall)) sandbox_invoke(void * __capability c1, void* __capability c2);
//extern void sandbox_invoke(void * __capability c1, void* __capability c2);


static void * __capability libcheri_sealing_root;

static void *__capability sandbox_A_sealcap;
static void *__capability sandbox_A_codecap;
static struct sandbox_data *__capability sandbox_A_datacap;

static void *__capability sandbox_B_sealcap;
static void *__capability sandbox_B_codecap;
static struct sandbox_data *__capability sandbox_B_datacap;

static void *__capability sandbox_shared_datacap;

struct sandbox_data{
  int data __attribute__ ((aligned(32)));
  char name[32] __attribute__ ((aligned(32)));
};

static struct sandbox_data shared __attribute__ ((aligned(64)));
static struct sandbox_data privateA __attribute__ ((aligned(64)));
static struct sandbox_data privateB __attribute__ ((aligned(64)));
static int privateDummy __attribute__ ((aligned(64)));

// bare capability without sealing/unsealing
struct sandbox_data * __capability sharedp;
struct sandbox_data * __capability privateAp;
struct sandbox_data * __capability privateBp;



void sandboxB_print();

void __attribute__((cheri_ccallee)) sandboxA_print();
//void __attribute__((cheri_ccall)) sandboxA_print();
//void sandboxA_print();



