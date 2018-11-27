extern void __VERIFIER_error() __attribute__ ((__noreturn__));
typedef unsigned short __u16;
typedef int __s32;
typedef unsigned int __u32;
typedef unsigned long long __u64;
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef long long s64;
typedef unsigned long long u64;
typedef u64 dma_addr_t;
typedef unsigned int __kernel_mode_t;
typedef int __kernel_pid_t;
typedef unsigned int __kernel_uid_t;
typedef unsigned int __kernel_gid_t;
typedef unsigned long __kernel_size_t;
typedef long __kernel_ssize_t;
typedef long __kernel_time_t;
typedef long __kernel_clock_t;
typedef int __kernel_timer_t;
typedef int __kernel_clockid_t;
typedef long long __kernel_loff_t;
typedef __kernel_uid_t __kernel_uid32_t;
typedef __kernel_gid_t __kernel_gid32_t;
typedef __u32 __kernel_dev_t;
typedef __kernel_dev_t dev_t;
typedef __kernel_mode_t mode_t;
typedef __kernel_pid_t pid_t;
typedef __kernel_clockid_t clockid_t;
typedef _Bool bool;
typedef __kernel_uid32_t uid_t;
typedef __kernel_gid32_t gid_t;
typedef __kernel_loff_t loff_t;
typedef __kernel_size_t size_t;
typedef __kernel_ssize_t ssize_t;
typedef __kernel_time_t time_t;
typedef __s32 int32_t;
typedef __u32 uint32_t;
typedef unsigned int gfp_t;
typedef u64 phys_addr_t;
typedef phys_addr_t resource_size_t;
struct __anonstruct_atomic_t_6 {
   int counter ;
};
typedef struct __anonstruct_atomic_t_6 atomic_t;
struct __anonstruct_atomic64_t_7 {
   long counter ;
};
typedef struct __anonstruct_atomic64_t_7 atomic64_t;
struct list_head {
   struct list_head *next ;
   struct list_head *prev ;
};
struct hlist_node;
struct hlist_head {
   struct hlist_node *first ;
};
struct hlist_node {
   struct hlist_node *next ;
   struct hlist_node **pprev ;
};
struct module;
struct bug_entry {
   int bug_addr_disp ;
   int file_disp ;
   unsigned short line ;
   unsigned short flags ;
};
struct completion;
struct pt_regs;
struct pid;
struct timespec;
struct compat_timespec;
struct __anonstruct_ldv_1678_9 {
   unsigned long arg0 ;
   unsigned long arg1 ;
   unsigned long arg2 ;
   unsigned long arg3 ;
};
struct __anonstruct_futex_10 {
   u32 *uaddr ;
   u32 val ;
   u32 flags ;
   u32 bitset ;
   u64 time ;
   u32 *uaddr2 ;
};
struct __anonstruct_nanosleep_11 {
   clockid_t index ;
   struct timespec *rmtp ;
   struct compat_timespec *compat_rmtp ;
   u64 expires ;
};
struct pollfd;
struct __anonstruct_poll_12 {
   struct pollfd *ufds ;
   int nfds ;
   int has_timeout ;
   unsigned long tv_sec ;
   unsigned long tv_nsec ;
};
union __anonunion_ldv_1701_8 {
   struct __anonstruct_ldv_1678_9 ldv_1678 ;
   struct __anonstruct_futex_10 futex ;
   struct __anonstruct_nanosleep_11 nanosleep ;
   struct __anonstruct_poll_12 poll ;
};
struct restart_block {
   long (*fn)(struct restart_block * ) ;
   union __anonunion_ldv_1701_8 ldv_1701 ;
};
struct page;
struct task_struct;
struct exec_domain;
struct mm_struct;
struct pt_regs {
   unsigned long r15 ;
   unsigned long r14 ;
   unsigned long r13 ;
   unsigned long r12 ;
   unsigned long bp ;
   unsigned long bx ;
   unsigned long r11 ;
   unsigned long r10 ;
   unsigned long r9 ;
   unsigned long r8 ;
   unsigned long ax ;
   unsigned long cx ;
   unsigned long dx ;
   unsigned long si ;
   unsigned long di ;
   unsigned long orig_ax ;
   unsigned long ip ;
   unsigned long cs ;
   unsigned long flags ;
   unsigned long sp ;
   unsigned long ss ;
};
typedef void (*ctor_fn_t)(void);
struct kernel_vm86_regs {
   struct pt_regs pt ;
   unsigned short es ;
   unsigned short __esh ;
   unsigned short ds ;
   unsigned short __dsh ;
   unsigned short fs ;
   unsigned short __fsh ;
   unsigned short gs ;
   unsigned short __gsh ;
};
union __anonunion_ldv_1951_13 {
   struct pt_regs *regs ;
   struct kernel_vm86_regs *vm86 ;
};
struct math_emu_info {
   long ___orig_eip ;
   union __anonunion_ldv_1951_13 ldv_1951 ;
};
typedef unsigned long pgdval_t;
typedef unsigned long pgprotval_t;
struct pgprot {
   pgprotval_t pgprot ;
};
typedef struct pgprot pgprot_t;
struct __anonstruct_pgd_t_16 {
   pgdval_t pgd ;
};
typedef struct __anonstruct_pgd_t_16 pgd_t;
struct file;
struct __anonstruct_ldv_2161_20 {
   unsigned int a ;
   unsigned int b ;
};
struct __anonstruct_ldv_2176_21 {
   u16 limit0 ;
   u16 base0 ;
   unsigned char base1 ;
   unsigned char type : 4 ;
   unsigned char s : 1 ;
   unsigned char dpl : 2 ;
   unsigned char p : 1 ;
   unsigned char limit : 4 ;
   unsigned char avl : 1 ;
   unsigned char l : 1 ;
   unsigned char d : 1 ;
   unsigned char g : 1 ;
   unsigned char base2 ;
};
union __anonunion_ldv_2177_19 {
   struct __anonstruct_ldv_2161_20 ldv_2161 ;
   struct __anonstruct_ldv_2176_21 ldv_2176 ;
};
struct desc_struct {
   union __anonunion_ldv_2177_19 ldv_2177 ;
};
struct thread_struct;
struct cpumask;
struct paravirt_callee_save {
   void *func ;
};
struct pv_irq_ops {
   struct paravirt_callee_save save_fl ;
   struct paravirt_callee_save restore_fl ;
   struct paravirt_callee_save irq_disable ;
   struct paravirt_callee_save irq_enable ;
   void (*safe_halt)(void) ;
   void (*halt)(void) ;
   void (*adjust_exception_frame)(void) ;
};
struct arch_spinlock;
struct cpumask {
   unsigned long bits[64U] ;
};
typedef struct cpumask cpumask_t;
struct map_segment;
struct exec_domain {
   char const *name ;
   void (*handler)(int , struct pt_regs * ) ;
   unsigned char pers_low ;
   unsigned char pers_high ;
   unsigned long *signal_map ;
   unsigned long *signal_invmap ;
   struct map_segment *err_map ;
   struct map_segment *socktype_map ;
   struct map_segment *sockopt_map ;
   struct map_segment *af_map ;
   struct module *module ;
   struct exec_domain *next ;
};
struct i387_fsave_struct {
   u32 cwd ;
   u32 swd ;
   u32 twd ;
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
   u32 st_space[20U] ;
   u32 status ;
};
struct __anonstruct_ldv_4740_25 {
   u64 rip ;
   u64 rdp ;
};
struct __anonstruct_ldv_4746_26 {
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
};
union __anonunion_ldv_4747_24 {
   struct __anonstruct_ldv_4740_25 ldv_4740 ;
   struct __anonstruct_ldv_4746_26 ldv_4746 ;
};
union __anonunion_ldv_4756_27 {
   u32 padding1[12U] ;
   u32 sw_reserved[12U] ;
};
struct i387_fxsave_struct {
   u16 cwd ;
   u16 swd ;
   u16 twd ;
   u16 fop ;
   union __anonunion_ldv_4747_24 ldv_4747 ;
   u32 mxcsr ;
   u32 mxcsr_mask ;
   u32 st_space[32U] ;
   u32 xmm_space[64U] ;
   u32 padding[12U] ;
   union __anonunion_ldv_4756_27 ldv_4756 ;
};
struct i387_soft_struct {
   u32 cwd ;
   u32 swd ;
   u32 twd ;
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
   u32 st_space[20U] ;
   u8 ftop ;
   u8 changed ;
   u8 lookahead ;
   u8 no_update ;
   u8 rm ;
   u8 alimit ;
   struct math_emu_info *info ;
   u32 entry_eip ;
};
struct ymmh_struct {
   u32 ymmh_space[64U] ;
};
struct xsave_hdr_struct {
   u64 xstate_bv ;
   u64 reserved1[2U] ;
   u64 reserved2[5U] ;
};
struct xsave_struct {
   struct i387_fxsave_struct i387 ;
   struct xsave_hdr_struct xsave_hdr ;
   struct ymmh_struct ymmh ;
};
union thread_xstate {
   struct i387_fsave_struct fsave ;
   struct i387_fxsave_struct fxsave ;
   struct i387_soft_struct soft ;
   struct xsave_struct xsave ;
};
struct fpu {
   union thread_xstate *state ;
};
struct kmem_cache;
struct perf_event;
struct thread_struct {
   struct desc_struct tls_array[3U] ;
   unsigned long sp0 ;
   unsigned long sp ;
   unsigned long usersp ;
   unsigned short es ;
   unsigned short ds ;
   unsigned short fsindex ;
   unsigned short gsindex ;
   unsigned long fs ;
   unsigned long gs ;
   struct perf_event *ptrace_bps[4U] ;
   unsigned long debugreg6 ;
   unsigned long ptrace_dr7 ;
   unsigned long cr2 ;
   unsigned long trap_no ;
   unsigned long error_code ;
   struct fpu fpu ;
   unsigned long *io_bitmap_ptr ;
   unsigned long iopl ;
   unsigned int io_bitmap_max ;
};
struct __anonstruct_mm_segment_t_29 {
   unsigned long seg ;
};
typedef struct __anonstruct_mm_segment_t_29 mm_segment_t;
typedef atomic64_t atomic_long_t;
struct thread_info {
   struct task_struct *task ;
   struct exec_domain *exec_domain ;
   __u32 flags ;
   __u32 status ;
   __u32 cpu ;
   int preempt_count ;
   mm_segment_t addr_limit ;
   struct restart_block restart_block ;
   void *sysenter_return ;
   int uaccess_err ;
};
enum irqreturn {
    IRQ_NONE = 0,
    IRQ_HANDLED = 1,
    IRQ_WAKE_THREAD = 2
} ;
typedef enum irqreturn irqreturn_t;
struct lockdep_map;
struct stack_trace {
   unsigned int nr_entries ;
   unsigned int max_entries ;
   unsigned long *entries ;
   int skip ;
};
struct lockdep_subclass_key {
   char __one_byte ;
};
struct lock_class_key {
   struct lockdep_subclass_key subkeys[8U] ;
};
struct lock_class {
   struct list_head hash_entry ;
   struct list_head lock_entry ;
   struct lockdep_subclass_key *key ;
   unsigned int subclass ;
   unsigned int dep_gen_id ;
   unsigned long usage_mask ;
   struct stack_trace usage_traces[13U] ;
   struct list_head locks_after ;
   struct list_head locks_before ;
   unsigned int version ;
   unsigned long ops ;
   char const *name ;
   int name_version ;
   unsigned long contention_point[4U] ;
   unsigned long contending_point[4U] ;
};
struct lockdep_map {
   struct lock_class_key *key ;
   struct lock_class *class_cache[2U] ;
   char const *name ;
   int cpu ;
   unsigned long ip ;
};
struct held_lock {
   u64 prev_chain_key ;
   unsigned long acquire_ip ;
   struct lockdep_map *instance ;
   struct lockdep_map *nest_lock ;
   u64 waittime_stamp ;
   u64 holdtime_stamp ;
   unsigned short class_idx : 13 ;
   unsigned char irq_context : 2 ;
   unsigned char trylock : 1 ;
   unsigned char read : 2 ;
   unsigned char check : 2 ;
   unsigned char hardirqs_off : 1 ;
   unsigned short references : 11 ;
};
struct resource {
   resource_size_t start ;
   resource_size_t end ;
   char const *name ;
   unsigned long flags ;
   struct resource *parent ;
   struct resource *sibling ;
   struct resource *child ;
};
struct pci_dev;
struct device;
struct arch_spinlock {
   unsigned int slock ;
};
typedef struct arch_spinlock arch_spinlock_t;
struct raw_spinlock {
   arch_spinlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct raw_spinlock raw_spinlock_t;
struct __anonstruct_ldv_6530_50 {
   u8 __padding[1U] ;
   struct lockdep_map dep_map ;
};
union __anonunion_ldv_6531_49 {
   struct raw_spinlock rlock ;
   struct __anonstruct_ldv_6530_50 ldv_6530 ;
};
struct spinlock {
   union __anonunion_ldv_6531_49 ldv_6531 ;
};
typedef struct spinlock spinlock_t;
struct timespec {
   __kernel_time_t tv_sec ;
   long tv_nsec ;
};
union ktime {
   s64 tv64 ;
};
typedef union ktime ktime_t;
struct tvec_base;
struct timer_list {
   struct list_head entry ;
   unsigned long expires ;
   struct tvec_base *base ;
   void (*function)(unsigned long ) ;
   unsigned long data ;
   int slack ;
   void *start_site ;
   char start_comm[16U] ;
   int start_pid ;
   struct lockdep_map lockdep_map ;
};
struct hrtimer;
enum hrtimer_restart;
struct work_struct;
struct work_struct {
   atomic_long_t data ;
   struct list_head entry ;
   void (*func)(struct work_struct * ) ;
   struct lockdep_map lockdep_map ;
};
struct __wait_queue_head {
   spinlock_t lock ;
   struct list_head task_list ;
};
typedef struct __wait_queue_head wait_queue_head_t;
struct completion {
   unsigned int done ;
   wait_queue_head_t wait ;
};
struct pm_message {
   int event ;
};
typedef struct pm_message pm_message_t;
struct dev_pm_ops {
   int (*prepare)(struct device * ) ;
   void (*complete)(struct device * ) ;
   int (*suspend)(struct device * ) ;
   int (*resume)(struct device * ) ;
   int (*freeze)(struct device * ) ;
   int (*thaw)(struct device * ) ;
   int (*poweroff)(struct device * ) ;
   int (*restore)(struct device * ) ;
   int (*suspend_noirq)(struct device * ) ;
   int (*resume_noirq)(struct device * ) ;
   int (*freeze_noirq)(struct device * ) ;
   int (*thaw_noirq)(struct device * ) ;
   int (*poweroff_noirq)(struct device * ) ;
   int (*restore_noirq)(struct device * ) ;
   int (*runtime_suspend)(struct device * ) ;
   int (*runtime_resume)(struct device * ) ;
   int (*runtime_idle)(struct device * ) ;
};
enum dpm_state {
    DPM_INVALID = 0,
    DPM_ON = 1,
    DPM_PREPARING = 2,
    DPM_RESUMING = 3,
    DPM_SUSPENDING = 4,
    DPM_OFF = 5,
    DPM_OFF_IRQ = 6
} ;
enum rpm_status {
    RPM_ACTIVE = 0,
    RPM_RESUMING = 1,
    RPM_SUSPENDED = 2,
    RPM_SUSPENDING = 3
} ;
enum rpm_request {
    RPM_REQ_NONE = 0,
    RPM_REQ_IDLE = 1,
    RPM_REQ_SUSPEND = 2,
    RPM_REQ_AUTOSUSPEND = 3,
    RPM_REQ_RESUME = 4
} ;
struct wakeup_source;
struct dev_pm_info {
   pm_message_t power_state ;
   unsigned char can_wakeup : 1 ;
   unsigned char async_suspend : 1 ;
   enum dpm_state status ;
   spinlock_t lock ;
   struct list_head entry ;
   struct completion completion ;
   struct wakeup_source *wakeup ;
   struct timer_list suspend_timer ;
   unsigned long timer_expires ;
   struct work_struct work ;
   wait_queue_head_t wait_queue ;
   atomic_t usage_count ;
   atomic_t child_count ;
   unsigned char disable_depth : 3 ;
   unsigned char ignore_children : 1 ;
   unsigned char idle_notification : 1 ;
   unsigned char request_pending : 1 ;
   unsigned char deferred_resume : 1 ;
   unsigned char run_wake : 1 ;
   unsigned char runtime_auto : 1 ;
   unsigned char no_callbacks : 1 ;
   unsigned char use_autosuspend : 1 ;
   unsigned char timer_autosuspends : 1 ;
   enum rpm_request request ;
   enum rpm_status runtime_status ;
   int runtime_error ;
   int autosuspend_delay ;
   unsigned long last_busy ;
   unsigned long active_jiffies ;
   unsigned long suspended_jiffies ;
   unsigned long accounting_timestamp ;
};
struct __anonstruct_nodemask_t_99 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_99 nodemask_t;
struct mutex {
   atomic_t count ;
   spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct thread_info *owner ;
   char const *name ;
   void *magic ;
   struct lockdep_map dep_map ;
};
struct mutex_waiter {
   struct list_head list ;
   struct task_struct *task ;
   void *magic ;
};
struct __anonstruct_mm_context_t_100 {
   void *ldt ;
   int size ;
   struct mutex lock ;
   void *vdso ;
};
typedef struct __anonstruct_mm_context_t_100 mm_context_t;
struct rw_semaphore;
typedef long rwsem_count_t;
struct rw_semaphore {
   rwsem_count_t count ;
   spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct lockdep_map dep_map ;
};
struct pci_bus;
struct vm_area_struct;
struct proc_dir_entry;
struct irqaction;
struct exception_table_entry {
   unsigned long insn ;
   unsigned long fixup ;
};
struct rb_node {
   unsigned long rb_parent_color ;
   struct rb_node *rb_right ;
   struct rb_node *rb_left ;
};
struct rb_root {
   struct rb_node *rb_node ;
};
struct hrtimer_clock_base;
struct hrtimer_cpu_base;
enum hrtimer_restart {
    HRTIMER_NORESTART = 0,
    HRTIMER_RESTART = 1
} ;
struct hrtimer {
   struct rb_node node ;
   ktime_t _expires ;
   ktime_t _softexpires ;
   enum hrtimer_restart (*function)(struct hrtimer * ) ;
   struct hrtimer_clock_base *base ;
   unsigned long state ;
   int start_pid ;
   void *start_site ;
   char start_comm[16U] ;
};
struct hrtimer_clock_base {
   struct hrtimer_cpu_base *cpu_base ;
   clockid_t index ;
   struct rb_root active ;
   struct rb_node *first ;
   ktime_t resolution ;
   ktime_t (*get_time)(void) ;
   ktime_t softirq_time ;
   ktime_t offset ;
};
struct hrtimer_cpu_base {
   raw_spinlock_t lock ;
   struct hrtimer_clock_base clock_base[2U] ;
   ktime_t expires_next ;
   int hres_active ;
   int hang_detected ;
   unsigned long nr_events ;
   unsigned long nr_retries ;
   unsigned long nr_hangs ;
   ktime_t max_hang_time ;
};
struct rcu_head {
   struct rcu_head *next ;
   void (*func)(struct rcu_head * ) ;
};
struct tracepoint;
struct tracepoint_func {
   void *func ;
   void *data ;
};
struct tracepoint {
   char const *name ;
   int state ;
   void (*regfunc)(void) ;
   void (*unregfunc)(void) ;
   struct tracepoint_func *funcs ;
};
struct irqaction {
   irqreturn_t (*handler)(int , void * ) ;
   unsigned long flags ;
   char const *name ;
   void *dev_id ;
   struct irqaction *next ;
   int irq ;
   struct proc_dir_entry *dir ;
   irqreturn_t (*thread_fn)(int , void * ) ;
   struct task_struct *thread ;
   unsigned long thread_flags ;
};
struct kernel_cap_struct {
   __u32 cap[2U] ;
};
typedef struct kernel_cap_struct kernel_cap_t;
struct prio_tree_node;
struct raw_prio_tree_node {
   struct prio_tree_node *left ;
   struct prio_tree_node *right ;
   struct prio_tree_node *parent ;
};
struct prio_tree_node {
   struct prio_tree_node *left ;
   struct prio_tree_node *right ;
   struct prio_tree_node *parent ;
   unsigned long start ;
   unsigned long last ;
};
struct address_space;
struct __anonstruct_ldv_12045_111 {
   u16 inuse ;
   u16 objects ;
};
union __anonunion_ldv_12046_110 {
   atomic_t _mapcount ;
   struct __anonstruct_ldv_12045_111 ldv_12045 ;
};
struct __anonstruct_ldv_12051_113 {
   unsigned long private ;
   struct address_space *mapping ;
};
union __anonunion_ldv_12054_112 {
   struct __anonstruct_ldv_12051_113 ldv_12051 ;
   struct kmem_cache *slab ;
   struct page *first_page ;
};
union __anonunion_ldv_12058_114 {
   unsigned long index ;
   void *freelist ;
};
struct page {
   unsigned long flags ;
   atomic_t _count ;
   union __anonunion_ldv_12046_110 ldv_12046 ;
   union __anonunion_ldv_12054_112 ldv_12054 ;
   union __anonunion_ldv_12058_114 ldv_12058 ;
   struct list_head lru ;
};
struct __anonstruct_vm_set_116 {
   struct list_head list ;
   void *parent ;
   struct vm_area_struct *head ;
};
union __anonunion_shared_115 {
   struct __anonstruct_vm_set_116 vm_set ;
   struct raw_prio_tree_node prio_tree_node ;
};
struct anon_vma;
struct vm_operations_struct;
struct mempolicy;
struct vm_area_struct {
   struct mm_struct *vm_mm ;
   unsigned long vm_start ;
   unsigned long vm_end ;
   struct vm_area_struct *vm_next ;
   struct vm_area_struct *vm_prev ;
   pgprot_t vm_page_prot ;
   unsigned long vm_flags ;
   struct rb_node vm_rb ;
   union __anonunion_shared_115 shared ;
   struct list_head anon_vma_chain ;
   struct anon_vma *anon_vma ;
   struct vm_operations_struct const *vm_ops ;
   unsigned long vm_pgoff ;
   struct file *vm_file ;
   void *vm_private_data ;
   unsigned long vm_truncate_count ;
   struct mempolicy *vm_policy ;
};
struct core_thread {
   struct task_struct *task ;
   struct core_thread *next ;
};
struct core_state {
   atomic_t nr_threads ;
   struct core_thread dumper ;
   struct completion startup ;
};
struct mm_rss_stat {
   unsigned long count[3U] ;
};
struct linux_binfmt;
struct mmu_notifier_mm;
struct mm_struct {
   struct vm_area_struct *mmap ;
   struct rb_root mm_rb ;
   struct vm_area_struct *mmap_cache ;
   unsigned long (*get_unmapped_area)(struct file * , unsigned long , unsigned long ,
                                      unsigned long , unsigned long ) ;
   void (*unmap_area)(struct mm_struct * , unsigned long ) ;
   unsigned long mmap_base ;
   unsigned long task_size ;
   unsigned long cached_hole_size ;
   unsigned long free_area_cache ;
   pgd_t *pgd ;
   atomic_t mm_users ;
   atomic_t mm_count ;
   int map_count ;
   struct rw_semaphore mmap_sem ;
   spinlock_t page_table_lock ;
   struct list_head mmlist ;
   unsigned long hiwater_rss ;
   unsigned long hiwater_vm ;
   unsigned long total_vm ;
   unsigned long locked_vm ;
   unsigned long shared_vm ;
   unsigned long exec_vm ;
   unsigned long stack_vm ;
   unsigned long reserved_vm ;
   unsigned long def_flags ;
   unsigned long nr_ptes ;
   unsigned long start_code ;
   unsigned long end_code ;
   unsigned long start_data ;
   unsigned long end_data ;
   unsigned long start_brk ;
   unsigned long brk ;
   unsigned long start_stack ;
   unsigned long arg_start ;
   unsigned long arg_end ;
   unsigned long env_start ;
   unsigned long env_end ;
   unsigned long saved_auxv[44U] ;
   struct mm_rss_stat rss_stat ;
   struct linux_binfmt *binfmt ;
   cpumask_t cpu_vm_mask ;
   mm_context_t context ;
   unsigned int faultstamp ;
   unsigned int token_priority ;
   unsigned int last_interval ;
   unsigned long flags ;
   struct core_state *core_state ;
   spinlock_t ioctx_lock ;
   struct hlist_head ioctx_list ;
   struct task_struct *owner ;
   struct file *exe_file ;
   unsigned long num_exe_file_vmas ;
   struct mmu_notifier_mm *mmu_notifier_mm ;
   atomic_t oom_disable_count ;
};
typedef unsigned long cputime_t;
struct sem_undo_list;
struct sem_undo_list {
   atomic_t refcnt ;
   spinlock_t lock ;
   struct list_head list_proc ;
};
struct sysv_sem {
   struct sem_undo_list *undo_list ;
};
struct siginfo;
struct __anonstruct_sigset_t_117 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_117 sigset_t;
typedef void __signalfn_t(int );
typedef __signalfn_t *__sighandler_t;
typedef void __restorefn_t(void);
typedef __restorefn_t *__sigrestore_t;
struct sigaction {
   __sighandler_t sa_handler ;
   unsigned long sa_flags ;
   __sigrestore_t sa_restorer ;
   sigset_t sa_mask ;
};
struct k_sigaction {
   struct sigaction sa ;
};
union sigval {
   int sival_int ;
   void *sival_ptr ;
};
typedef union sigval sigval_t;
struct __anonstruct__kill_119 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_120 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_121 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_122 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__sigfault_123 {
   void *_addr ;
   short _addr_lsb ;
};
struct __anonstruct__sigpoll_124 {
   long _band ;
   int _fd ;
};
union __anonunion__sifields_118 {
   int _pad[28U] ;
   struct __anonstruct__kill_119 _kill ;
   struct __anonstruct__timer_120 _timer ;
   struct __anonstruct__rt_121 _rt ;
   struct __anonstruct__sigchld_122 _sigchld ;
   struct __anonstruct__sigfault_123 _sigfault ;
   struct __anonstruct__sigpoll_124 _sigpoll ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_118 _sifields ;
};
typedef struct siginfo siginfo_t;
struct user_struct;
struct sigpending {
   struct list_head list ;
   sigset_t signal ;
};
struct pid_namespace;
struct upid {
   int nr ;
   struct pid_namespace *ns ;
   struct hlist_node pid_chain ;
};
struct pid {
   atomic_t count ;
   unsigned int level ;
   struct hlist_head tasks[3U] ;
   struct rcu_head rcu ;
   struct upid numbers[1U] ;
};
struct pid_link {
   struct hlist_node node ;
   struct pid *pid ;
};
struct prop_local_single {
   unsigned long events ;
   unsigned long period ;
   int shift ;
   spinlock_t lock ;
};
struct __anonstruct_seccomp_t_127 {
   int mode ;
};
typedef struct __anonstruct_seccomp_t_127 seccomp_t;
struct plist_head {
   struct list_head prio_list ;
   struct list_head node_list ;
   raw_spinlock_t *rawlock ;
   spinlock_t *spinlock ;
};
struct plist_node {
   int prio ;
   struct plist_head plist ;
};
struct rt_mutex_waiter;
struct rlimit {
   unsigned long rlim_cur ;
   unsigned long rlim_max ;
};
struct task_io_accounting {
   u64 rchar ;
   u64 wchar ;
   u64 syscr ;
   u64 syscw ;
   u64 read_bytes ;
   u64 write_bytes ;
   u64 cancelled_write_bytes ;
};
struct sock;
struct kobject;
enum kobj_ns_type {
    KOBJ_NS_TYPE_NONE = 0,
    KOBJ_NS_TYPE_NET = 1,
    KOBJ_NS_TYPES = 2
} ;
struct kobj_ns_type_operations {
   enum kobj_ns_type type ;
   void const *(*current_ns)(void) ;
   void const *(*netlink_ns)(struct sock * ) ;
   void const *(*initial_ns)(void) ;
};
struct attribute {
   char const *name ;
   mode_t mode ;
   struct lock_class_key *key ;
   struct lock_class_key skey ;
};
struct attribute_group {
   char const *name ;
   mode_t (*is_visible)(struct kobject * , struct attribute * , int ) ;
   struct attribute **attrs ;
};
struct bin_attribute {
   struct attribute attr ;
   size_t size ;
   void *private ;
   ssize_t (*read)(struct file * , struct kobject * , struct bin_attribute * , char * ,
                   loff_t , size_t ) ;
   ssize_t (*write)(struct file * , struct kobject * , struct bin_attribute * , char * ,
                    loff_t , size_t ) ;
   int (*mmap)(struct file * , struct kobject * , struct bin_attribute * , struct vm_area_struct * ) ;
};
struct sysfs_ops {
   ssize_t (*show)(struct kobject * , struct attribute * , char * ) ;
   ssize_t (*store)(struct kobject * , struct attribute * , char const * , size_t ) ;
};
struct sysfs_dirent;
struct kref {
   atomic_t refcount ;
};
struct kset;
struct kobj_type;
struct kobject {
   char const *name ;
   struct list_head entry ;
   struct kobject *parent ;
   struct kset *kset ;
   struct kobj_type *ktype ;
   struct sysfs_dirent *sd ;
   struct kref kref ;
   unsigned char state_initialized : 1 ;
   unsigned char state_in_sysfs : 1 ;
   unsigned char state_add_uevent_sent : 1 ;
   unsigned char state_remove_uevent_sent : 1 ;
   unsigned char uevent_suppress : 1 ;
};
struct kobj_type {
   void (*release)(struct kobject * ) ;
   struct sysfs_ops const *sysfs_ops ;
   struct attribute **default_attrs ;
   struct kobj_ns_type_operations const *(*child_ns_type)(struct kobject * ) ;
   void const *(*namespace)(struct kobject * ) ;
};
struct kobj_uevent_env {
   char *envp[32U] ;
   int envp_idx ;
   char buf[2048U] ;
   int buflen ;
};
struct kset_uevent_ops {
   int (* const filter)(struct kset * , struct kobject * ) ;
   char const *(* const name)(struct kset * , struct kobject * ) ;
   int (* const uevent)(struct kset * , struct kobject * , struct kobj_uevent_env * ) ;
};
struct kset {
   struct list_head list ;
   spinlock_t list_lock ;
   struct kobject kobj ;
   struct kset_uevent_ops const *uevent_ops ;
};
struct latency_record {
   unsigned long backtrace[12U] ;
   unsigned int count ;
   unsigned long time ;
   unsigned long max ;
};
struct nsproxy;
typedef int32_t key_serial_t;
typedef uint32_t key_perm_t;
struct key;
struct signal_struct;
struct cred;
struct key_type;
struct keyring_list;
struct key_user;
union __anonunion_ldv_14248_128 {
   time_t expiry ;
   time_t revoked_at ;
};
union __anonunion_type_data_129 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
};
union __anonunion_payload_130 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   struct keyring_list *subscriptions ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   struct rb_node serial_node ;
   struct key_type *type ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion_ldv_14248_128 ldv_14248 ;
   uid_t uid ;
   gid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   char *description ;
   union __anonunion_type_data_129 type_data ;
   union __anonunion_payload_130 payload ;
};
struct audit_context;
struct group_info {
   atomic_t usage ;
   int ngroups ;
   int nblocks ;
   gid_t small_block[32U] ;
   gid_t *blocks[0U] ;
};
struct thread_group_cred {
   atomic_t usage ;
   pid_t tgid ;
   spinlock_t lock ;
   struct key *session_keyring ;
   struct key *process_keyring ;
   struct rcu_head rcu ;
};
struct cred {
   atomic_t usage ;
   atomic_t subscribers ;
   void *put_addr ;
   unsigned int magic ;
   uid_t uid ;
   gid_t gid ;
   uid_t suid ;
   gid_t sgid ;
   uid_t euid ;
   gid_t egid ;
   uid_t fsuid ;
   gid_t fsgid ;
   unsigned int securebits ;
   kernel_cap_t cap_inheritable ;
   kernel_cap_t cap_permitted ;
   kernel_cap_t cap_effective ;
   kernel_cap_t cap_bset ;
   unsigned char jit_keyring ;
   struct key *thread_keyring ;
   struct key *request_key_auth ;
   struct thread_group_cred *tgcred ;
   void *security ;
   struct user_struct *user ;
   struct group_info *group_info ;
   struct rcu_head rcu ;
};
struct futex_pi_state;
struct robust_list_head;
struct bio_list;
struct fs_struct;
struct perf_event_context;
struct cfs_rq;
struct user_namespace;
struct sighand_struct {
   atomic_t count ;
   struct k_sigaction action[64U] ;
   spinlock_t siglock ;
   wait_queue_head_t signalfd_wqh ;
};
struct pacct_struct {
   int ac_flag ;
   long ac_exitcode ;
   unsigned long ac_mem ;
   cputime_t ac_utime ;
   cputime_t ac_stime ;
   unsigned long ac_minflt ;
   unsigned long ac_majflt ;
};
struct cpu_itimer {
   cputime_t expires ;
   cputime_t incr ;
   u32 error ;
   u32 incr_error ;
};
struct task_cputime {
   cputime_t utime ;
   cputime_t stime ;
   unsigned long long sum_exec_runtime ;
};
struct thread_group_cputimer {
   struct task_cputime cputime ;
   int running ;
   spinlock_t lock ;
};
struct tty_struct;
struct taskstats;
struct tty_audit_buf;
struct signal_struct {
   atomic_t sigcnt ;
   atomic_t live ;
   int nr_threads ;
   wait_queue_head_t wait_chldexit ;
   struct task_struct *curr_target ;
   struct sigpending shared_pending ;
   int group_exit_code ;
   int notify_count ;
   struct task_struct *group_exit_task ;
   int group_stop_count ;
   unsigned int flags ;
   struct list_head posix_timers ;
   struct hrtimer real_timer ;
   struct pid *leader_pid ;
   ktime_t it_real_incr ;
   struct cpu_itimer it[2U] ;
   struct thread_group_cputimer cputimer ;
   struct task_cputime cputime_expires ;
   struct list_head cpu_timers[3U] ;
   struct pid *tty_old_pgrp ;
   int leader ;
   struct tty_struct *tty ;
   cputime_t utime ;
   cputime_t stime ;
   cputime_t cutime ;
   cputime_t cstime ;
   cputime_t gtime ;
   cputime_t cgtime ;
   cputime_t prev_utime ;
   cputime_t prev_stime ;
   unsigned long nvcsw ;
   unsigned long nivcsw ;
   unsigned long cnvcsw ;
   unsigned long cnivcsw ;
   unsigned long min_flt ;
   unsigned long maj_flt ;
   unsigned long cmin_flt ;
   unsigned long cmaj_flt ;
   unsigned long inblock ;
   unsigned long oublock ;
   unsigned long cinblock ;
   unsigned long coublock ;
   unsigned long maxrss ;
   unsigned long cmaxrss ;
   struct task_io_accounting ioac ;
   unsigned long long sum_sched_runtime ;
   struct rlimit rlim[16U] ;
   struct pacct_struct pacct ;
   struct taskstats *stats ;
   unsigned int audit_tty ;
   struct tty_audit_buf *tty_audit_buf ;
   int oom_adj ;
   int oom_score_adj ;
   struct mutex cred_guard_mutex ;
};
struct user_struct {
   atomic_t __count ;
   atomic_t processes ;
   atomic_t files ;
   atomic_t sigpending ;
   atomic_t inotify_watches ;
   atomic_t inotify_devs ;
   atomic_t fanotify_listeners ;
   atomic_t epoll_watches ;
   unsigned long mq_bytes ;
   unsigned long locked_shm ;
   struct key *uid_keyring ;
   struct key *session_keyring ;
   struct hlist_node uidhash_node ;
   uid_t uid ;
   struct user_namespace *user_ns ;
   atomic_long_t locked_vm ;
};
struct backing_dev_info;
struct reclaim_state;
struct sched_info {
   unsigned long pcount ;
   unsigned long long run_delay ;
   unsigned long long last_arrival ;
   unsigned long long last_queued ;
   unsigned int bkl_count ;
};
struct task_delay_info {
   spinlock_t lock ;
   unsigned int flags ;
   struct timespec blkio_start ;
   struct timespec blkio_end ;
   u64 blkio_delay ;
   u64 swapin_delay ;
   u32 blkio_count ;
   u32 swapin_count ;
   struct timespec freepages_start ;
   struct timespec freepages_end ;
   u64 freepages_delay ;
   u32 freepages_count ;
};
struct io_context;
struct pipe_inode_info;
struct rq;
struct sched_class {
   struct sched_class const *next ;
   void (*enqueue_task)(struct rq * , struct task_struct * , int ) ;
   void (*dequeue_task)(struct rq * , struct task_struct * , int ) ;
   void (*yield_task)(struct rq * ) ;
   void (*check_preempt_curr)(struct rq * , struct task_struct * , int ) ;
   struct task_struct *(*pick_next_task)(struct rq * ) ;
   void (*put_prev_task)(struct rq * , struct task_struct * ) ;
   int (*select_task_rq)(struct rq * , struct task_struct * , int , int ) ;
   void (*pre_schedule)(struct rq * , struct task_struct * ) ;
   void (*post_schedule)(struct rq * ) ;
   void (*task_waking)(struct rq * , struct task_struct * ) ;
   void (*task_woken)(struct rq * , struct task_struct * ) ;
   void (*set_cpus_allowed)(struct task_struct * , struct cpumask const * ) ;
   void (*rq_online)(struct rq * ) ;
   void (*rq_offline)(struct rq * ) ;
   void (*set_curr_task)(struct rq * ) ;
   void (*task_tick)(struct rq * , struct task_struct * , int ) ;
   void (*task_fork)(struct task_struct * ) ;
   void (*switched_from)(struct rq * , struct task_struct * , int ) ;
   void (*switched_to)(struct rq * , struct task_struct * , int ) ;
   void (*prio_changed)(struct rq * , struct task_struct * , int , int ) ;
   unsigned int (*get_rr_interval)(struct rq * , struct task_struct * ) ;
   void (*task_move_group)(struct task_struct * , int ) ;
};
struct load_weight {
   unsigned long weight ;
   unsigned long inv_weight ;
};
struct sched_statistics {
   u64 wait_start ;
   u64 wait_max ;
   u64 wait_count ;
   u64 wait_sum ;
   u64 iowait_count ;
   u64 iowait_sum ;
   u64 sleep_start ;
   u64 sleep_max ;
   s64 sum_sleep_runtime ;
   u64 block_start ;
   u64 block_max ;
   u64 exec_max ;
   u64 slice_max ;
   u64 nr_migrations_cold ;
   u64 nr_failed_migrations_affine ;
   u64 nr_failed_migrations_running ;
   u64 nr_failed_migrations_hot ;
   u64 nr_forced_migrations ;
   u64 nr_wakeups ;
   u64 nr_wakeups_sync ;
   u64 nr_wakeups_migrate ;
   u64 nr_wakeups_local ;
   u64 nr_wakeups_remote ;
   u64 nr_wakeups_affine ;
   u64 nr_wakeups_affine_attempts ;
   u64 nr_wakeups_passive ;
   u64 nr_wakeups_idle ;
};
struct sched_entity {
   struct load_weight load ;
   struct rb_node run_node ;
   struct list_head group_node ;
   unsigned int on_rq ;
   u64 exec_start ;
   u64 sum_exec_runtime ;
   u64 vruntime ;
   u64 prev_sum_exec_runtime ;
   u64 nr_migrations ;
   struct sched_statistics statistics ;
   struct sched_entity *parent ;
   struct cfs_rq *cfs_rq ;
   struct cfs_rq *my_q ;
};
struct rt_rq;
struct sched_rt_entity {
   struct list_head run_list ;
   unsigned long timeout ;
   unsigned int time_slice ;
   int nr_cpus_allowed ;
   struct sched_rt_entity *back ;
   struct sched_rt_entity *parent ;
   struct rt_rq *rt_rq ;
   struct rt_rq *my_q ;
};
struct mem_cgroup;
struct memcg_batch_info {
   int do_batch ;
   struct mem_cgroup *memcg ;
   unsigned long bytes ;
   unsigned long memsw_bytes ;
};
struct files_struct;
struct css_set;
struct compat_robust_list_head;
struct task_struct {
   long volatile state ;
   void *stack ;
   atomic_t usage ;
   unsigned int flags ;
   unsigned int ptrace ;
   int lock_depth ;
   int prio ;
   int static_prio ;
   int normal_prio ;
   unsigned int rt_priority ;
   struct sched_class const *sched_class ;
   struct sched_entity se ;
   struct sched_rt_entity rt ;
   struct hlist_head preempt_notifiers ;
   unsigned char fpu_counter ;
   unsigned int policy ;
   cpumask_t cpus_allowed ;
   struct sched_info sched_info ;
   struct list_head tasks ;
   struct plist_node pushable_tasks ;
   struct mm_struct *mm ;
   struct mm_struct *active_mm ;
   int exit_state ;
   int exit_code ;
   int exit_signal ;
   int pdeath_signal ;
   unsigned int personality ;
   unsigned char did_exec : 1 ;
   unsigned char in_execve : 1 ;
   unsigned char in_iowait : 1 ;
   unsigned char sched_reset_on_fork : 1 ;
   pid_t pid ;
   pid_t tgid ;
   unsigned long stack_canary ;
   struct task_struct *real_parent ;
   struct task_struct *parent ;
   struct list_head children ;
   struct list_head sibling ;
   struct task_struct *group_leader ;
   struct list_head ptraced ;
   struct list_head ptrace_entry ;
   struct pid_link pids[3U] ;
   struct list_head thread_group ;
   struct completion *vfork_done ;
   int *set_child_tid ;
   int *clear_child_tid ;
   cputime_t utime ;
   cputime_t stime ;
   cputime_t utimescaled ;
   cputime_t stimescaled ;
   cputime_t gtime ;
   cputime_t prev_utime ;
   cputime_t prev_stime ;
   unsigned long nvcsw ;
   unsigned long nivcsw ;
   struct timespec start_time ;
   struct timespec real_start_time ;
   unsigned long min_flt ;
   unsigned long maj_flt ;
   struct task_cputime cputime_expires ;
   struct list_head cpu_timers[3U] ;
   struct cred const *real_cred ;
   struct cred const *cred ;
   struct cred *replacement_session_keyring ;
   char comm[16U] ;
   int link_count ;
   int total_link_count ;
   struct sysv_sem sysvsem ;
   unsigned long last_switch_count ;
   struct thread_struct thread ;
   struct fs_struct *fs ;
   struct files_struct *files ;
   struct nsproxy *nsproxy ;
   struct signal_struct *signal ;
   struct sighand_struct *sighand ;
   sigset_t blocked ;
   sigset_t real_blocked ;
   sigset_t saved_sigmask ;
   struct sigpending pending ;
   unsigned long sas_ss_sp ;
   size_t sas_ss_size ;
   int (*notifier)(void * ) ;
   void *notifier_data ;
   sigset_t *notifier_mask ;
   struct audit_context *audit_context ;
   uid_t loginuid ;
   unsigned int sessionid ;
   seccomp_t seccomp ;
   u32 parent_exec_id ;
   u32 self_exec_id ;
   spinlock_t alloc_lock ;
   struct irqaction *irqaction ;
   raw_spinlock_t pi_lock ;
   struct plist_head pi_waiters ;
   struct rt_mutex_waiter *pi_blocked_on ;
   struct mutex_waiter *blocked_on ;
   unsigned int irq_events ;
   unsigned long hardirq_enable_ip ;
   unsigned long hardirq_disable_ip ;
   unsigned int hardirq_enable_event ;
   unsigned int hardirq_disable_event ;
   int hardirqs_enabled ;
   int hardirq_context ;
   unsigned long softirq_disable_ip ;
   unsigned long softirq_enable_ip ;
   unsigned int softirq_disable_event ;
   unsigned int softirq_enable_event ;
   int softirqs_enabled ;
   int softirq_context ;
   u64 curr_chain_key ;
   int lockdep_depth ;
   unsigned int lockdep_recursion ;
   struct held_lock held_locks[48U] ;
   gfp_t lockdep_reclaim_gfp ;
   void *journal_info ;
   struct bio_list *bio_list ;
   struct reclaim_state *reclaim_state ;
   struct backing_dev_info *backing_dev_info ;
   struct io_context *io_context ;
   unsigned long ptrace_message ;
   siginfo_t *last_siginfo ;
   struct task_io_accounting ioac ;
   u64 acct_rss_mem1 ;
   u64 acct_vm_mem1 ;
   cputime_t acct_timexpd ;
   nodemask_t mems_allowed ;
   int mems_allowed_change_disable ;
   int cpuset_mem_spread_rotor ;
   int cpuset_slab_spread_rotor ;
   struct css_set *cgroups ;
   struct list_head cg_list ;
   struct robust_list_head *robust_list ;
   struct compat_robust_list_head *compat_robust_list ;
   struct list_head pi_state_list ;
   struct futex_pi_state *pi_state_cache ;
   struct perf_event_context *perf_event_ctxp[2U] ;
   struct mutex perf_event_mutex ;
   struct list_head perf_event_list ;
   struct mempolicy *mempolicy ;
   short il_next ;
   atomic_t fs_excl ;
   struct rcu_head rcu ;
   struct pipe_inode_info *splice_pipe ;
   struct task_delay_info *delays ;
   int make_it_fail ;
   struct prop_local_single dirties ;
   int latency_record_count ;
   struct latency_record latency_record[32U] ;
   unsigned long timer_slack_ns ;
   unsigned long default_timer_slack_ns ;
   struct list_head *scm_work_list ;
   unsigned long trace ;
   unsigned long trace_recursion ;
   struct memcg_batch_info memcg_batch ;
};
typedef __u64 Elf64_Addr;
typedef __u16 Elf64_Half;
typedef __u32 Elf64_Word;
typedef __u64 Elf64_Xword;
struct elf64_sym {
   Elf64_Word st_name ;
   unsigned char st_info ;
   unsigned char st_other ;
   Elf64_Half st_shndx ;
   Elf64_Addr st_value ;
   Elf64_Xword st_size ;
};
typedef struct elf64_sym Elf64_Sym;
struct kernel_param;
struct kernel_param_ops {
   int (*set)(char const * , struct kernel_param const * ) ;
   int (*get)(char * , struct kernel_param const * ) ;
   void (*free)(void * ) ;
};
struct kparam_string;
struct kparam_array;
union __anonunion_ldv_16357_136 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   u16 flags ;
   union __anonunion_ldv_16357_136 ldv_16357 ;
};
struct kparam_string {
   unsigned int maxlen ;
   char *string ;
};
struct kparam_array {
   unsigned int max ;
   unsigned int *num ;
   struct kernel_param_ops const *ops ;
   unsigned int elemsize ;
   void *elem ;
};
struct mod_arch_specific {
};
struct kernel_symbol {
   unsigned long value ;
   char const *name ;
};
struct module_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct module_attribute * , struct module * , char * ) ;
   ssize_t (*store)(struct module_attribute * , struct module * , char const * ,
                    size_t ) ;
   void (*setup)(struct module * , char const * ) ;
   int (*test)(struct module * ) ;
   void (*free)(struct module * ) ;
};
struct module_param_attrs;
struct module_kobject {
   struct kobject kobj ;
   struct module *mod ;
   struct kobject *drivers_dir ;
   struct module_param_attrs *mp ;
};
enum module_state {
    MODULE_STATE_LIVE = 0,
    MODULE_STATE_COMING = 1,
    MODULE_STATE_GOING = 2
} ;
struct module_ref {
   unsigned int incs ;
   unsigned int decs ;
};
struct module_sect_attrs;
struct module_notes_attrs;
struct ftrace_event_call;
struct module {
   enum module_state state ;
   struct list_head list ;
   char name[56U] ;
   struct module_kobject mkobj ;
   struct module_attribute *modinfo_attrs ;
   char const *version ;
   char const *srcversion ;
   struct kobject *holders_dir ;
   struct kernel_symbol const *syms ;
   unsigned long const *crcs ;
   unsigned int num_syms ;
   struct kernel_param *kp ;
   unsigned int num_kp ;
   unsigned int num_gpl_syms ;
   struct kernel_symbol const *gpl_syms ;
   unsigned long const *gpl_crcs ;
   struct kernel_symbol const *unused_syms ;
   unsigned long const *unused_crcs ;
   unsigned int num_unused_syms ;
   unsigned int num_unused_gpl_syms ;
   struct kernel_symbol const *unused_gpl_syms ;
   unsigned long const *unused_gpl_crcs ;
   struct kernel_symbol const *gpl_future_syms ;
   unsigned long const *gpl_future_crcs ;
   unsigned int num_gpl_future_syms ;
   unsigned int num_exentries ;
   struct exception_table_entry *extable ;
   int (*init)(void) ;
   void *module_init ;
   void *module_core ;
   unsigned int init_size ;
   unsigned int core_size ;
   unsigned int init_text_size ;
   unsigned int core_text_size ;
   struct mod_arch_specific arch ;
   unsigned int taints ;
   unsigned int num_bugs ;
   struct list_head bug_list ;
   struct bug_entry *bug_table ;
   Elf64_Sym *symtab ;
   Elf64_Sym *core_symtab ;
   unsigned int num_symtab ;
   unsigned int core_num_syms ;
   char *strtab ;
   char *core_strtab ;
   struct module_sect_attrs *sect_attrs ;
   struct module_notes_attrs *notes_attrs ;
   void *percpu ;
   unsigned int percpu_size ;
   char *args ;
   struct tracepoint *tracepoints ;
   unsigned int num_tracepoints ;
   char const **trace_bprintk_fmt_start ;
   unsigned int num_trace_bprintk_fmt ;
   struct ftrace_event_call *trace_events ;
   unsigned int num_trace_events ;
   struct list_head source_list ;
   struct list_head target_list ;
   struct task_struct *waiter ;
   void (*exit)(void) ;
   struct module_ref *refptr ;
   ctor_fn_t (**ctors)(void) ;
   unsigned int num_ctors ;
};
struct kmem_cache_cpu {
   void **freelist ;
   struct page *page ;
   int node ;
   unsigned int stat[18U] ;
};
struct kmem_cache_node {
   spinlock_t list_lock ;
   unsigned long nr_partial ;
   struct list_head partial ;
   atomic_long_t nr_slabs ;
   atomic_long_t total_objects ;
   struct list_head full ;
};
struct kmem_cache_order_objects {
   unsigned long x ;
};
struct kmem_cache {
   struct kmem_cache_cpu *cpu_slab ;
   unsigned long flags ;
   int size ;
   int objsize ;
   int offset ;
   struct kmem_cache_order_objects oo ;
   struct kmem_cache_order_objects max ;
   struct kmem_cache_order_objects min ;
   gfp_t allocflags ;
   int refcount ;
   void (*ctor)(void * ) ;
   int inuse ;
   int align ;
   unsigned long min_partial ;
   char const *name ;
   struct list_head list ;
   struct kobject kobj ;
   int remote_node_defrag_ratio ;
   struct kmem_cache_node *node[1024U] ;
};
struct vm_fault {
   unsigned int flags ;
   unsigned long pgoff ;
   void *virtual_address ;
   struct page *page ;
};
struct vm_operations_struct {
   void (*open)(struct vm_area_struct * ) ;
   void (*close)(struct vm_area_struct * ) ;
   int (*fault)(struct vm_area_struct * , struct vm_fault * ) ;
   int (*page_mkwrite)(struct vm_area_struct * , struct vm_fault * ) ;
   int (*access)(struct vm_area_struct * , unsigned long , void * , int , int ) ;
   int (*set_policy)(struct vm_area_struct * , struct mempolicy * ) ;
   struct mempolicy *(*get_policy)(struct vm_area_struct * , unsigned long ) ;
   int (*migrate)(struct vm_area_struct * , nodemask_t const * , nodemask_t const * ,
                  unsigned long ) ;
};
struct klist_node;
struct klist_node {
   void *n_klist ;
   struct list_head n_node ;
   struct kref n_ref ;
};
struct dma_map_ops;
struct dev_archdata {
   void *acpi_handle ;
   struct dma_map_ops *dma_ops ;
   void *iommu ;
};
struct device_private;
struct device_driver;
struct driver_private;
struct class;
struct class_private;
struct bus_type;
struct bus_type_private;
struct bus_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct bus_type * , char * ) ;
   ssize_t (*store)(struct bus_type * , char const * , size_t ) ;
};
struct device_attribute;
struct driver_attribute;
struct bus_type {
   char const *name ;
   struct bus_attribute *bus_attrs ;
   struct device_attribute *dev_attrs ;
   struct driver_attribute *drv_attrs ;
   int (*match)(struct device * , struct device_driver * ) ;
   int (*uevent)(struct device * , struct kobj_uevent_env * ) ;
   int (*probe)(struct device * ) ;
   int (*remove)(struct device * ) ;
   void (*shutdown)(struct device * ) ;
   int (*suspend)(struct device * , pm_message_t ) ;
   int (*resume)(struct device * ) ;
   struct dev_pm_ops const *pm ;
   struct bus_type_private *p ;
};
struct device_driver {
   char const *name ;
   struct bus_type *bus ;
   struct module *owner ;
   char const *mod_name ;
   bool suppress_bind_attrs ;
   int (*probe)(struct device * ) ;
   int (*remove)(struct device * ) ;
   void (*shutdown)(struct device * ) ;
   int (*suspend)(struct device * , pm_message_t ) ;
   int (*resume)(struct device * ) ;
   struct attribute_group const **groups ;
   struct dev_pm_ops const *pm ;
   struct driver_private *p ;
};
struct driver_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct device_driver * , char * ) ;
   ssize_t (*store)(struct device_driver * , char const * , size_t ) ;
};
struct class_attribute;
struct class {
   char const *name ;
   struct module *owner ;
   struct class_attribute *class_attrs ;
   struct device_attribute *dev_attrs ;
   struct kobject *dev_kobj ;
   int (*dev_uevent)(struct device * , struct kobj_uevent_env * ) ;
   char *(*devnode)(struct device * , mode_t * ) ;
   void (*class_release)(struct class * ) ;
   void (*dev_release)(struct device * ) ;
   int (*suspend)(struct device * , pm_message_t ) ;
   int (*resume)(struct device * ) ;
   struct kobj_ns_type_operations const *ns_type ;
   void const *(*namespace)(struct device * ) ;
   struct dev_pm_ops const *pm ;
   struct class_private *p ;
};
struct device_type;
struct class_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct class * , struct class_attribute * , char * ) ;
   ssize_t (*store)(struct class * , struct class_attribute * , char const * , size_t ) ;
};
struct device_type {
   char const *name ;
   struct attribute_group const **groups ;
   int (*uevent)(struct device * , struct kobj_uevent_env * ) ;
   char *(*devnode)(struct device * , mode_t * ) ;
   void (*release)(struct device * ) ;
   struct dev_pm_ops const *pm ;
};
struct device_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct device * , struct device_attribute * , char * ) ;
   ssize_t (*store)(struct device * , struct device_attribute * , char const * ,
                    size_t ) ;
};
struct device_dma_parameters {
   unsigned int max_segment_size ;
   unsigned long segment_boundary_mask ;
};
struct dma_coherent_mem;
struct device {
   struct device *parent ;
   struct device_private *p ;
   struct kobject kobj ;
   char const *init_name ;
   struct device_type *type ;
   struct mutex mutex ;
   struct bus_type *bus ;
   struct device_driver *driver ;
   void *platform_data ;
   struct dev_pm_info power ;
   int numa_node ;
   u64 *dma_mask ;
   u64 coherent_dma_mask ;
   struct device_dma_parameters *dma_parms ;
   struct list_head dma_pools ;
   struct dma_coherent_mem *dma_mem ;
   struct dev_archdata archdata ;
   dev_t devt ;
   spinlock_t devres_lock ;
   struct list_head devres_head ;
   struct klist_node knode_class ;
   struct class *class ;
   struct attribute_group const **groups ;
   void (*release)(struct device * ) ;
};
struct wakeup_source {
   char *name ;
   struct list_head entry ;
   spinlock_t lock ;
   struct timer_list timer ;
   unsigned long timer_expires ;
   ktime_t total_time ;
   ktime_t max_time ;
   ktime_t last_time ;
   unsigned long event_count ;
   unsigned long active_count ;
   unsigned long relax_count ;
   unsigned long hit_count ;
   unsigned char active : 1 ;
};
struct dma_attrs {
   unsigned long flags[1U] ;
};
struct scatterlist {
   unsigned long sg_magic ;
   unsigned long page_link ;
   unsigned int offset ;
   unsigned int length ;
   dma_addr_t dma_address ;
   unsigned int dma_length ;
};
enum dma_data_direction {
    DMA_BIDIRECTIONAL = 0,
    DMA_TO_DEVICE = 1,
    DMA_FROM_DEVICE = 2,
    DMA_NONE = 3
} ;
struct dma_map_ops {
   void *(*alloc_coherent)(struct device * , size_t , dma_addr_t * , gfp_t ) ;
   void (*free_coherent)(struct device * , size_t , void * , dma_addr_t ) ;
   dma_addr_t (*map_page)(struct device * , struct page * , unsigned long , size_t ,
                          enum dma_data_direction , struct dma_attrs * ) ;
   void (*unmap_page)(struct device * , dma_addr_t , size_t , enum dma_data_direction ,
                      struct dma_attrs * ) ;
   int (*map_sg)(struct device * , struct scatterlist * , int , enum dma_data_direction ,
                 struct dma_attrs * ) ;
   void (*unmap_sg)(struct device * , struct scatterlist * , int , enum dma_data_direction ,
                    struct dma_attrs * ) ;
   void (*sync_single_for_cpu)(struct device * , dma_addr_t , size_t , enum dma_data_direction ) ;
   void (*sync_single_for_device)(struct device * , dma_addr_t , size_t , enum dma_data_direction ) ;
   void (*sync_sg_for_cpu)(struct device * , struct scatterlist * , int , enum dma_data_direction ) ;
   void (*sync_sg_for_device)(struct device * , struct scatterlist * , int , enum dma_data_direction ) ;
   int (*mapping_error)(struct device * , dma_addr_t ) ;
   int (*dma_supported)(struct device * , u64 ) ;
   int (*set_dma_mask)(struct device * , u64 ) ;
   int is_phys ;
};
struct comedi_insn {
   unsigned int insn ;
   unsigned int n ;
   unsigned int *data ;
   unsigned int subdev ;
   unsigned int chanspec ;
   unsigned int unused[3U] ;
};
struct comedi_cmd {
   unsigned int subdev ;
   unsigned int flags ;
   unsigned int start_src ;
   unsigned int start_arg ;
   unsigned int scan_begin_src ;
   unsigned int scan_begin_arg ;
   unsigned int convert_src ;
   unsigned int convert_arg ;
   unsigned int scan_end_src ;
   unsigned int scan_end_arg ;
   unsigned int stop_src ;
   unsigned int stop_arg ;
   unsigned int *chanlist ;
   unsigned int chanlist_len ;
   short *data ;
   unsigned int data_len ;
};
struct comedi_krange {
   int min ;
   int max ;
   unsigned int flags ;
};
struct comedi_devconfig {
   char board_name[20U] ;
   int options[32U] ;
};
struct comedi_device;
struct comedi_async;
struct comedi_lrange;
struct comedi_subdevice {
   struct comedi_device *device ;
   int type ;
   int n_chan ;
   int subdev_flags ;
   int len_chanlist ;
   void *private ;
   struct comedi_async *async ;
   void *lock ;
   void *busy ;
   unsigned int runflags ;
   spinlock_t spin_lock ;
   int io_bits ;
   unsigned int maxdata ;
   unsigned int const *maxdata_list ;
   unsigned int flags ;
   unsigned int const *flaglist ;
   unsigned int settling_time_0 ;
   struct comedi_lrange const *range_table ;
   struct comedi_lrange const * const *range_table_list ;
   unsigned int *chanlist ;
   int (*insn_read)(struct comedi_device * , struct comedi_subdevice * , struct comedi_insn * ,
                    unsigned int * ) ;
   int (*insn_write)(struct comedi_device * , struct comedi_subdevice * , struct comedi_insn * ,
                     unsigned int * ) ;
   int (*insn_bits)(struct comedi_device * , struct comedi_subdevice * , struct comedi_insn * ,
                    unsigned int * ) ;
   int (*insn_config)(struct comedi_device * , struct comedi_subdevice * , struct comedi_insn * ,
                      unsigned int * ) ;
   int (*do_cmd)(struct comedi_device * , struct comedi_subdevice * ) ;
   int (*do_cmdtest)(struct comedi_device * , struct comedi_subdevice * , struct comedi_cmd * ) ;
   int (*poll)(struct comedi_device * , struct comedi_subdevice * ) ;
   int (*cancel)(struct comedi_device * , struct comedi_subdevice * ) ;
   int (*buf_change)(struct comedi_device * , struct comedi_subdevice * , unsigned long ) ;
   void (*munge)(struct comedi_device * , struct comedi_subdevice * , void * , unsigned int ,
                 unsigned int ) ;
   enum dma_data_direction async_dma_dir ;
   unsigned int state ;
   struct device *class_dev ;
   int minor ;
};
struct comedi_buf_page {
   void *virt_addr ;
   dma_addr_t dma_addr ;
};
struct comedi_async {
   struct comedi_subdevice *subdevice ;
   void *prealloc_buf ;
   unsigned int prealloc_bufsz ;
   struct comedi_buf_page *buf_page_list ;
   unsigned int n_buf_pages ;
   unsigned int max_bufsize ;
   unsigned int mmap_count ;
   unsigned int buf_write_count ;
   unsigned int buf_write_alloc_count ;
   unsigned int buf_read_count ;
   unsigned int buf_read_alloc_count ;
   unsigned int buf_write_ptr ;
   unsigned int buf_read_ptr ;
   unsigned int cur_chan ;
   unsigned int scan_progress ;
   unsigned int munge_chan ;
   unsigned int munge_count ;
   unsigned int munge_ptr ;
   unsigned int events ;
   struct comedi_cmd cmd ;
   wait_queue_head_t wait_head ;
   unsigned int cb_mask ;
   int (*cb_func)(unsigned int , void * ) ;
   void *cb_arg ;
   int (*inttrig)(struct comedi_device * , struct comedi_subdevice * , unsigned int ) ;
};
struct comedi_driver {
   struct comedi_driver *next ;
   char const *driver_name ;
   struct module *module ;
   int (*attach)(struct comedi_device * , struct comedi_devconfig * ) ;
   int (*detach)(struct comedi_device * ) ;
   unsigned int num_names ;
   char const * const *board_name ;
   int offset ;
};
struct fasync_struct;
struct comedi_device {
   int use_count ;
   struct comedi_driver *driver ;
   void *private ;
   struct device *class_dev ;
   int minor ;
   struct device *hw_dev ;
   char const *board_name ;
   void const *board_ptr ;
   int attached ;
   spinlock_t spinlock ;
   struct mutex mutex ;
   int in_request_module ;
   int n_subdevices ;
   struct comedi_subdevice *subdevices ;
   unsigned long iobase ;
   unsigned int irq ;
   struct comedi_subdevice *read_subdev ;
   struct comedi_subdevice *write_subdev ;
   struct fasync_struct *async_queue ;
   int (*open)(struct comedi_device * ) ;
   void (*close)(struct comedi_device * ) ;
};
struct comedi_lrange {
   int length ;
   struct comedi_krange range[] ;
};
typedef unsigned long kernel_ulong_t;
struct pci_device_id {
   __u32 vendor ;
   __u32 device ;
   __u32 subvendor ;
   __u32 subdevice ;
   __u32 class ;
   __u32 class_mask ;
   kernel_ulong_t driver_data ;
};
struct hotplug_slot;
struct pci_slot {
   struct pci_bus *bus ;
   struct list_head list ;
   struct hotplug_slot *hotplug ;
   unsigned char number ;
   struct kobject kobj ;
};
typedef int pci_power_t;
typedef unsigned int pci_channel_state_t;
enum pci_channel_state {
    pci_channel_io_normal = 1,
    pci_channel_io_frozen = 2,
    pci_channel_io_perm_failure = 3
} ;
typedef unsigned short pci_dev_flags_t;
typedef unsigned short pci_bus_flags_t;
struct pcie_link_state;
struct pci_vpd;
struct pci_sriov;
struct pci_ats;
struct pci_driver;
union __anonunion_ldv_22982_154 {
   struct pci_sriov *sriov ;
   struct pci_dev *physfn ;
};
struct pci_dev {
   struct list_head bus_list ;
   struct pci_bus *bus ;
   struct pci_bus *subordinate ;
   void *sysdata ;
   struct proc_dir_entry *procent ;
   struct pci_slot *slot ;
   unsigned int devfn ;
   unsigned short vendor ;
   unsigned short device ;
   unsigned short subsystem_vendor ;
   unsigned short subsystem_device ;
   unsigned int class ;
   u8 revision ;
   u8 hdr_type ;
   u8 pcie_cap ;
   u8 pcie_type ;
   u8 rom_base_reg ;
   u8 pin ;
   struct pci_driver *driver ;
   u64 dma_mask ;
   struct device_dma_parameters dma_parms ;
   pci_power_t current_state ;
   int pm_cap ;
   unsigned char pme_support : 5 ;
   unsigned char pme_interrupt : 1 ;
   unsigned char d1_support : 1 ;
   unsigned char d2_support : 1 ;
   unsigned char no_d1d2 : 1 ;
   unsigned char mmio_always_on : 1 ;
   unsigned char wakeup_prepared : 1 ;
   unsigned int d3_delay ;
   struct pcie_link_state *link_state ;
   pci_channel_state_t error_state ;
   struct device dev ;
   int cfg_size ;
   unsigned int irq ;
   struct resource resource[18U] ;
   resource_size_t fw_addr[18U] ;
   unsigned char transparent : 1 ;
   unsigned char multifunction : 1 ;
   unsigned char is_added : 1 ;
   unsigned char is_busmaster : 1 ;
   unsigned char no_msi : 1 ;
   unsigned char block_ucfg_access : 1 ;
   unsigned char broken_parity_status : 1 ;
   unsigned char irq_reroute_variant : 2 ;
   unsigned char msi_enabled : 1 ;
   unsigned char msix_enabled : 1 ;
   unsigned char ari_enabled : 1 ;
   unsigned char is_managed : 1 ;
   unsigned char is_pcie : 1 ;
   unsigned char needs_freset : 1 ;
   unsigned char state_saved : 1 ;
   unsigned char is_physfn : 1 ;
   unsigned char is_virtfn : 1 ;
   unsigned char reset_fn : 1 ;
   unsigned char is_hotplug_bridge : 1 ;
   unsigned char __aer_firmware_first_valid : 1 ;
   unsigned char __aer_firmware_first : 1 ;
   pci_dev_flags_t dev_flags ;
   atomic_t enable_cnt ;
   u32 saved_config_space[16U] ;
   struct hlist_head saved_cap_space ;
   struct bin_attribute *rom_attr ;
   int rom_attr_enabled ;
   struct bin_attribute *res_attr[18U] ;
   struct bin_attribute *res_attr_wc[18U] ;
   struct list_head msi_list ;
   struct pci_vpd *vpd ;
   union __anonunion_ldv_22982_154 ldv_22982 ;
   struct pci_ats *ats ;
};
struct pci_ops;
struct pci_bus {
   struct list_head node ;
   struct pci_bus *parent ;
   struct list_head children ;
   struct list_head devices ;
   struct pci_dev *self ;
   struct list_head slots ;
   struct resource *resource[4U] ;
   struct list_head resources ;
   struct pci_ops *ops ;
   void *sysdata ;
   struct proc_dir_entry *procdir ;
   unsigned char number ;
   unsigned char primary ;
   unsigned char secondary ;
   unsigned char subordinate ;
   unsigned char max_bus_speed ;
   unsigned char cur_bus_speed ;
   char name[48U] ;
   unsigned short bridge_ctl ;
   pci_bus_flags_t bus_flags ;
   struct device *bridge ;
   struct device dev ;
   struct bin_attribute *legacy_io ;
   struct bin_attribute *legacy_mem ;
   unsigned char is_added : 1 ;
};
struct pci_ops {
   int (*read)(struct pci_bus * , unsigned int , int , int , u32 * ) ;
   int (*write)(struct pci_bus * , unsigned int , int , int , u32 ) ;
};
struct pci_dynids {
   spinlock_t lock ;
   struct list_head list ;
};
typedef unsigned int pci_ers_result_t;
struct pci_error_handlers {
   pci_ers_result_t (*error_detected)(struct pci_dev * , enum pci_channel_state ) ;
   pci_ers_result_t (*mmio_enabled)(struct pci_dev * ) ;
   pci_ers_result_t (*link_reset)(struct pci_dev * ) ;
   pci_ers_result_t (*slot_reset)(struct pci_dev * ) ;
   void (*resume)(struct pci_dev * ) ;
};
struct pci_driver {
   struct list_head node ;
   char const *name ;
   struct pci_device_id const *id_table ;
   int (*probe)(struct pci_dev * , struct pci_device_id const * ) ;
   void (*remove)(struct pci_dev * ) ;
   int (*suspend)(struct pci_dev * , pm_message_t ) ;
   int (*suspend_late)(struct pci_dev * , pm_message_t ) ;
   int (*resume_early)(struct pci_dev * ) ;
   int (*resume)(struct pci_dev * ) ;
   void (*shutdown)(struct pci_dev * ) ;
   struct pci_error_handlers *err_handler ;
   struct device_driver driver ;
   struct pci_dynids dynids ;
};
struct mite_dma_descriptor {
   u32 count ;
   u32 addr ;
   u32 next ;
   u32 dar ;
};
struct mite_dma_descriptor_ring {
   struct device *hw_dev ;
   unsigned int n_links ;
   struct mite_dma_descriptor *descriptors ;
   dma_addr_t descriptors_dma_addr ;
};
struct mite_struct;
struct mite_channel {
   struct mite_struct *mite ;
   unsigned int channel ;
   int dir ;
   int done ;
   struct mite_dma_descriptor_ring *ring ;
};
struct mite_struct {
   struct mite_struct *next ;
   int used ;
   struct pci_dev *pcidev ;
   resource_size_t mite_phys_addr ;
   void *mite_io_addr ;
   resource_size_t daq_phys_addr ;
   void *daq_io_addr ;
   struct mite_channel channels[8U] ;
   short channel_allocated[8U] ;
   int num_channels ;
   unsigned int fifo_size ;
   spinlock_t lock ;
};
struct nidio_board {
   int dev_id ;
   char const *name ;
   int n_8255 ;
   unsigned char is_diodaq : 1 ;
   unsigned char uses_firmware : 1 ;
};
struct nidio96_private {
   struct mite_struct *mite ;
   int boardtype ;
   int dio ;
   unsigned short OpModeBits ;
   struct mite_channel *di_mite_chan ;
   struct mite_dma_descriptor_ring *di_mite_ring ;
   spinlock_t mite_channel_lock ;
};
long ldv__builtin_expect(long exp , long c ) ;
int ldv_module_license(void) ;
int ldv_module_author(void) ;
int ldv_module_description(void) ;
__inline static int variable_test_bit(int nr , unsigned long const volatile *addr )
{
  int oldbit ;
  {
  __asm__ volatile ("bt %2,%1\n\tsbb %0,%0": "=r" (oldbit): "m" (*((unsigned long *)addr)),
                       "Ir" (nr));
  return (oldbit);
}
}
extern int printk(char const * , ...) ;
extern void warn_slowpath_null(char const * , int const ) ;
__inline static int get_order(unsigned long size )
{
  int order ;
  {
  size = (size - 1UL) >> 11;
  order = -1;
  ldv_1751:
  size = size >> 1;
  order = order + 1;
  if (size != 0UL) {
    goto ldv_1751;
  } else {
  }
  return (order);
}
}
extern void __bad_percpu_size(void) ;
extern struct pv_irq_ops pv_irq_ops ;
extern void *memset(void * , int , size_t ) ;
__inline static unsigned long arch_local_save_flags(void)
{
  unsigned long __ret ;
  unsigned long __edi ;
  unsigned long __esi ;
  unsigned long __edx ;
  unsigned long __ecx ;
  unsigned long __eax ;
  long tmp ;
  {
  __edi = __edi;
  __esi = __esi;
  __edx = __edx;
  __ecx = __ecx;
  __eax = __eax;
  tmp = ldv__builtin_expect((unsigned long )pv_irq_ops.save_fl.func == (unsigned long )((void *)0),
                         0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/vladimir/commit-test/commit-test-work/task-051--linux-stable--dir/inst/current/envs/linux-stable-adbbc36/linux-stable-adbbc36/arch/x86/include/asm/paravirt.h"),
                         "i" (829), "i" (12UL));
    ldv_4280: ;
    goto ldv_4280;
  } else {
  }
  __asm__ volatile ("771:\n\tcall *%c2;\n772:\n.pushsection .parainstructions,\"a\"\n .balign 8 \n .quad  771b\n  .byte %c1\n  .byte 772b-771b\n  .short %c3\n.popsection\n": "=a" (__eax): [paravirt_typenum] "i" (46UL),
                       [paravirt_opptr] "i" (& pv_irq_ops.save_fl.func), [paravirt_clobber] "i" (1): "memory",
                       "cc");
  __ret = __eax;
  return (__ret);
}
}
__inline static int arch_irqs_disabled_flags(unsigned long flags )
{
  {
  return ((flags & 512UL) == 0UL);
}
}
extern unsigned long kernel_stack ;
__inline static struct thread_info *current_thread_info(void)
{
  struct thread_info *ti ;
  unsigned long pfo_ret__ ;
  {
  switch (8UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_5341;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_5341;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_5341;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_5341;
  default:
  __bad_percpu_size();
  }
  ldv_5341:
  ti = (struct thread_info *)(pfo_ret__ - 8152UL);
  return (ti);
}
}
__inline static int test_ti_thread_flag(struct thread_info *ti , int flag )
{
  int tmp ;
  {
  tmp = variable_test_bit(flag, (unsigned long const volatile *)(& ti->flags));
  return (tmp);
}
}
extern void lockdep_rcu_dereference(char const * , int const ) ;
extern void __const_udelay(unsigned long ) ;
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
extern unsigned long _raw_spin_lock_irqsave(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irqrestore(raw_spinlock_t * , unsigned long ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->ldv_6531.rlock);
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags )
{
  {
  _raw_spin_unlock_irqrestore(& lock->ldv_6531.rlock, flags);
  return;
}
}
extern unsigned long __get_free_pages(gfp_t , unsigned int ) ;
extern int debug_lockdep_rcu_enabled(void) ;
__inline static int rcu_read_lock_sched_held(void)
{
  {
  return (1);
}
}
__inline static void rcu_read_lock_sched_notrace(void)
{
  {
  return;
}
}
extern int request_threaded_irq(unsigned int , irqreturn_t (*)(int , void * ) ,
                                irqreturn_t (*)(int , void * ) , unsigned long ,
                                char const * , void * ) ;
__inline static int request_irq(unsigned int irq , irqreturn_t (*handler)(int , void * ) ,
                                unsigned long flags , char const *name , void *dev )
{
  int tmp ;
  {
  tmp = request_threaded_irq(irq, handler, 0, flags, name, dev);
  return (tmp);
}
}
extern void free_irq(unsigned int , void * ) ;
extern void disable_irq(unsigned int ) ;
extern void schedule(void) ;
__inline static int need_resched(void)
{
  struct thread_info *tmp ;
  int tmp___0 ;
  long tmp___1 ;
  {
  tmp = current_thread_info();
  tmp___0 = test_ti_thread_flag(tmp, 3);
  tmp___1 = ldv__builtin_expect(tmp___0 != 0, 0L);
  return ((int )tmp___1);
}
}
extern struct module __this_module ;
extern void kfree(void const * ) ;
__inline static void kmemleak_alloc(void const *ptr , size_t size , int min_count ,
                                    gfp_t gfp )
{
  {
  return;
}
}
extern struct tracepoint __tracepoint_kmalloc ;
__inline static void trace_kmalloc(unsigned long call_site , void const *ptr , size_t bytes_req ,
                                   size_t bytes_alloc , gfp_t gfp_flags )
{
  long tmp ;
  struct tracepoint_func *it_func_ptr ;
  void *it_func ;
  void *__data ;
  struct tracepoint_func *_________p1 ;
  bool __warned ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tmp = ldv__builtin_expect(__tracepoint_kmalloc.state != 0, 0L);
  if (tmp != 0L) {
    goto do_trace;
  } else {
  }
  return;
  do_trace:
  rcu_read_lock_sched_notrace();
  _________p1 = *((struct tracepoint_func * volatile *)(& __tracepoint_kmalloc.funcs));
  tmp___0 = debug_lockdep_rcu_enabled();
  if (tmp___0 != 0 && ! __warned) {
    tmp___1 = rcu_read_lock_sched_held();
    if (tmp___1 == 0 && 1) {
      __warned = 1;
      lockdep_rcu_dereference("include/trace/events/kmem.h", 51);
    } else {
    }
  } else {
  }
  it_func_ptr = _________p1;
  if ((unsigned long )it_func_ptr != (unsigned long )((struct tracepoint_func *)0)) {
    ldv_17143:
    it_func = it_func_ptr->func;
    __data = it_func_ptr->data;
    (*((void (*)(void * , unsigned long , void const * , size_t , size_t , gfp_t ))it_func))(__data,
                                                                                                   call_site,
                                                                                                   ptr,
                                                                                                   bytes_req,
                                                                                                   bytes_alloc,
                                                                                                   gfp_flags);
    it_func_ptr = it_func_ptr + 1;
    if ((unsigned long )it_func_ptr->func != (unsigned long )((void *)0)) {
      goto ldv_17143;
    } else {
    }
  } else {
  }
  rcu_read_lock_sched_notrace();
  return;
}
}
extern struct kmem_cache *kmalloc_caches[14U] ;
__inline static int kmalloc_index(size_t size )
{
  {
  if (size == 0UL) {
    return (0);
  } else {
  }
  if (size <= 8UL) {
    return (3);
  } else {
  }
  if (size > 64UL && size <= 96UL) {
    return (1);
  } else {
  }
  if (size > 128UL && size <= 192UL) {
    return (2);
  } else {
  }
  if (size <= 8UL) {
    return (3);
  } else {
  }
  if (size <= 16UL) {
    return (4);
  } else {
  }
  if (size <= 32UL) {
    return (5);
  } else {
  }
  if (size <= 64UL) {
    return (6);
  } else {
  }
  if (size <= 128UL) {
    return (7);
  } else {
  }
  if (size <= 256UL) {
    return (8);
  } else {
  }
  if (size <= 512UL) {
    return (9);
  } else {
  }
  if (size <= 1024UL) {
    return (10);
  } else {
  }
  if (size <= 2048UL) {
    return (11);
  } else {
  }
  if (size <= 4096UL) {
    return (12);
  } else {
  }
  if (size <= 8192UL) {
    return (13);
  } else {
  }
  if (size <= 16384UL) {
    return (14);
  } else {
  }
  if (size <= 32768UL) {
    return (15);
  } else {
  }
  if (size <= 65536UL) {
    return (16);
  } else {
  }
  if (size <= 131072UL) {
    return (17);
  } else {
  }
  if (size <= 262144UL) {
    return (18);
  } else {
  }
  if (size <= 524288UL) {
    return (19);
  } else {
  }
  if (size <= 1048576UL) {
    return (20);
  } else {
  }
  if (size <= 2097152UL) {
    return (21);
  } else {
  }
  return (-1);
}
}
__inline static struct kmem_cache *kmalloc_slab(size_t size )
{
  int index ;
  int tmp ;
  {
  tmp = kmalloc_index(size);
  index = tmp;
  if (index == 0) {
    return (0);
  } else {
  }
  return (kmalloc_caches[index]);
}
}
extern int __VERIFIER_nondet_int(void);
extern void __VERIFIER_assume(int);
extern void *malloc(size_t size);
long ldv_is_err(const void *ptr)
{
  return ((unsigned long)ptr > ((unsigned long)-4095));
}
void *ldv_malloc(size_t size)
{
 if (__VERIFIER_nondet_int()) {
  void *res = malloc(size);
  __VERIFIER_assume(!ldv_is_err(res));
  return res;
 } else {
  return ((void *)0);
 }
}
void *__kmalloc(size_t size, gfp_t t)
{
 return ldv_malloc(size);
}
extern void *kmem_cache_alloc_notrace(struct kmem_cache * , gfp_t ) ;
__inline static void *kmalloc_large(size_t size , gfp_t flags )
{
  unsigned int order ;
  int tmp ;
  void *ret ;
  unsigned long tmp___0 ;
  {
  tmp = get_order(size);
  order = (unsigned int )tmp;
  tmp___0 = __get_free_pages(flags | 16384U, order);
  ret = (void *)tmp___0;
  kmemleak_alloc((void const *)ret, size, 1, flags);
  trace_kmalloc((unsigned long )((void *)0), (void const *)ret, size, 4096UL << (int )order,
                flags);
  return (ret);
}
}
__inline static void *kmalloc(size_t size , gfp_t flags )
{
  void *ret ;
  void *tmp ;
  struct kmem_cache *s ;
  struct kmem_cache *tmp___0 ;
  void *tmp___1 ;
  {
  if (0) {
    if (size > 8192UL) {
      tmp = kmalloc_large(size, flags);
      return (tmp);
    } else {
    }
    if ((flags & 1U) == 0U) {
      tmp___0 = kmalloc_slab(size);
      s = tmp___0;
      if ((unsigned long )s == (unsigned long )((struct kmem_cache *)0)) {
        return (16);
      } else {
      }
      ret = kmem_cache_alloc_notrace(s, flags);
      trace_kmalloc((unsigned long )((void *)0), (void const *)ret, size, (size_t )s->size,
                    flags);
      return (ret);
    } else {
    }
  } else {
  }
  tmp___1 = __kmalloc(size, flags);
  return (tmp___1);
}
}
__inline static void *kcalloc(size_t n , size_t size , gfp_t flags )
{
  void *tmp ;
  {
  if (size != 0UL && 0xffffffffffffffffUL / size < n) {
    return (0);
  } else {
  }
  tmp = __kmalloc(n * size, flags | 32768U);
  return (tmp);
}
}
__inline static void *kzalloc(size_t size , gfp_t flags )
{
  void *tmp ;
  {
  tmp = kmalloc(size, flags | 32768U);
  return (tmp);
}
}
extern struct device *get_device(struct device * ) ;
extern void put_device(struct device * ) ;
__inline static unsigned char readb(void const volatile *addr )
{
  unsigned char ret ;
  {
  __asm__ volatile ("movb %1,%0": "=q" (ret): "m" (*((unsigned char volatile *)addr)): "memory");
  return (ret);
}
}
__inline static unsigned short readw(void const volatile *addr )
{
  unsigned short ret ;
  {
  __asm__ volatile ("movw %1,%0": "=r" (ret): "m" (*((unsigned short volatile *)addr)): "memory");
  return (ret);
}
}
__inline static unsigned int readl(void const volatile *addr )
{
  unsigned int ret ;
  {
  __asm__ volatile ("movl %1,%0": "=r" (ret): "m" (*((unsigned int volatile *)addr)): "memory");
  return (ret);
}
}
__inline static void writeb(unsigned char val , void volatile *addr )
{
  {
  __asm__ volatile ("movb %0,%1": : "q" (val), "m" (*((unsigned char volatile *)addr)): "memory");
  return;
}
}
__inline static void writew(unsigned short val , void volatile *addr )
{
  {
  __asm__ volatile ("movw %0,%1": : "r" (val), "m" (*((unsigned short volatile *)addr)): "memory");
  return;
}
}
__inline static void writel(unsigned int val , void volatile *addr )
{
  {
  __asm__ volatile ("movl %0,%1": : "r" (val), "m" (*((unsigned int volatile *)addr)): "memory");
  return;
}
}
extern void debug_dma_free_coherent(struct device * , size_t , void * , dma_addr_t ) ;
extern struct dma_map_ops *dma_ops ;
__inline static struct dma_map_ops *get_dma_ops(struct device *dev )
{
  long tmp ;
  {
  tmp = ldv__builtin_expect((unsigned long )dev == (unsigned long )((struct device *)0),
                         0L);
  if (tmp != 0L || (unsigned long )dev->archdata.dma_ops == (unsigned long )((struct dma_map_ops *)0)) {
    return (dma_ops);
  } else {
    return (dev->archdata.dma_ops);
  }
}
}
__inline static void dma_free_coherent(struct device *dev , size_t size , void *vaddr ,
                                       dma_addr_t bus )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  int __ret_warn_on ;
  unsigned long _flags ;
  int tmp___0 ;
  long tmp___1 ;
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  _flags = arch_local_save_flags();
  tmp___0 = arch_irqs_disabled_flags(_flags);
  __ret_warn_on = tmp___0 != 0;
  tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___1 != 0L) {
    warn_slowpath_null("/work/vladimir/commit-test/commit-test-work/task-051--linux-stable--dir/inst/current/envs/linux-stable-adbbc36/linux-stable-adbbc36/arch/x86/include/asm/dma-mapping.h",
                       147);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  debug_dma_free_coherent(dev, size, vaddr, bus);
  if ((unsigned long )ops->free_coherent != (unsigned long )((void (*)(struct device * ,
                                                                       size_t , void * ,
                                                                       dma_addr_t ))0)) {
    (*(ops->free_coherent))(dev, size, vaddr, bus);
  } else {
  }
  return;
}
}
extern void comedi_event(struct comedi_device * , struct comedi_subdevice * ) ;
extern void comedi_error(struct comedi_device const * , char const * ) ;
extern int comedi_driver_register(struct comedi_driver * ) ;
extern int comedi_driver_unregister(struct comedi_driver * ) ;
extern struct comedi_lrange const range_unipolar5 ;
__inline static int alloc_subdevices(struct comedi_device *dev , unsigned int num_subdevices )
{
  unsigned int i ;
  void *tmp ;
  struct lock_class_key __key ;
  {
  dev->n_subdevices = (int )num_subdevices;
  tmp = kcalloc((size_t )num_subdevices, 304UL, 208U);
  dev->subdevices = (struct comedi_subdevice *)tmp;
  if ((unsigned long )dev->subdevices == (unsigned long )((struct comedi_subdevice *)0)) {
    return (-12);
  } else {
  }
  i = 0U;
  goto ldv_22572;
  ldv_22571:
  (dev->subdevices + (unsigned long )i)->device = dev;
  (dev->subdevices + (unsigned long )i)->async_dma_dir = 3;
  spinlock_check(& (dev->subdevices + (unsigned long )i)->spin_lock);
  __raw_spin_lock_init(& (dev->subdevices + (unsigned long )i)->spin_lock.ldv_6531.rlock,
                       "&(&dev->subdevices[i].spin_lock)->rlock", & __key);
  (dev->subdevices + (unsigned long )i)->minor = -1;
  i = i + 1U;
  ldv_22572: ;
  if (i < num_subdevices) {
    goto ldv_22571;
  } else {
  }
  return (0);
}
}
__inline static int alloc_private(struct comedi_device *dev , int size )
{
  {
  dev->private = kzalloc((size_t )size, 208U);
  if ((unsigned long )dev->private == (unsigned long )((void *)0)) {
    return (-12);
  } else {
  }
  return (0);
}
}
__inline static void comedi_set_hw_dev(struct comedi_device *dev , struct device *hw_dev )
{
  long tmp ;
  {
  if ((unsigned long )dev->hw_dev != (unsigned long )((struct device *)0)) {
    put_device(dev->hw_dev);
  } else {
  }
  dev->hw_dev = hw_dev;
  if ((unsigned long )dev->hw_dev != (unsigned long )((struct device *)0)) {
    dev->hw_dev = get_device(dev->hw_dev);
    tmp = ldv__builtin_expect((unsigned long )dev->hw_dev == (unsigned long )((struct device *)0),
                           0L);
    if (tmp != 0L) {
      __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/vladimir/commit-test/commit-test-work/task-051--linux-stable--dir/inst/current/envs/linux-stable-adbbc36/linux-stable-adbbc36/drivers/staging/comedi/drivers/../comedidev.h"),
                           "i" (404), "i" (12UL));
      ldv_22585: ;
      goto ldv_22585;
    } else {
    }
  } else {
  }
  return;
}
}
extern int comedi_buf_put(struct comedi_async * , short ) ;
__inline static void *comedi_aux_data(int *options , int n )
{
  unsigned long address ;
  unsigned long addressLow ;
  int bit_shift ;
  long tmp ;
  {
  address = (unsigned long )*(options + 29UL);
  bit_shift = 32;
  address = address << bit_shift;
  addressLow = (unsigned long )*(options + 30UL);
  addressLow = ((1UL << bit_shift) - 1UL) & addressLow;
  address = address | addressLow;
  if (n > 0) {
    address = (unsigned long )*(options + 28UL) + address;
  } else {
  }
  if (n > 1) {
    address = (unsigned long )*(options + 27UL) + address;
  } else {
  }
  if (n > 2) {
    address = (unsigned long )*(options + 26UL) + address;
  } else {
  }
  tmp = ldv__builtin_expect(n > 3, 0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/vladimir/commit-test/commit-test-work/task-051--linux-stable--dir/inst/current/envs/linux-stable-adbbc36/linux-stable-adbbc36/drivers/staging/comedi/drivers/../comedidev.h"),
                         "i" (455), "i" (12UL));
    ldv_22634: ;
    goto ldv_22634;
  } else {
  }
  return ((void *)address);
}
}
extern int comedi_pci_auto_config(struct pci_dev * , char const * ) ;
extern void comedi_pci_auto_unconfig(struct pci_dev * ) ;
extern int __pci_register_driver(struct pci_driver * , struct module * , char const * ) ;
extern void pci_unregister_driver(struct pci_driver * ) ;
__inline static struct mite_dma_descriptor_ring *mite_alloc_ring(struct mite_struct *mite )
{
  struct mite_dma_descriptor_ring *ring ;
  void *tmp ;
  {
  tmp = kmalloc(32UL, 208U);
  ring = (struct mite_dma_descriptor_ring *)tmp;
  if ((unsigned long )ring == (unsigned long )((struct mite_dma_descriptor_ring *)0)) {
    return (ring);
  } else {
  }
  ring->hw_dev = get_device(& (mite->pcidev)->dev);
  if ((unsigned long )ring->hw_dev == (unsigned long )((struct device *)0)) {
    kfree((void const *)ring);
    return (0);
  } else {
  }
  ring->n_links = 0U;
  ring->descriptors = 0;
  ring->descriptors_dma_addr = 0ULL;
  return (ring);
}
}
__inline static void mite_free_ring(struct mite_dma_descriptor_ring *ring )
{
  {
  if ((unsigned long )ring != (unsigned long )((struct mite_dma_descriptor_ring *)0)) {
    if ((unsigned long )ring->descriptors != (unsigned long )((struct mite_dma_descriptor *)0)) {
      dma_free_coherent(ring->hw_dev, (unsigned long )ring->n_links * 16UL, (void *)ring->descriptors,
                        ring->descriptors_dma_addr);
    } else {
    }
    put_device(ring->hw_dev);
    kfree((void const *)ring);
  } else {
  }
  return;
}
}
extern struct mite_struct *mite_devices ;
__inline static unsigned int mite_irq(struct mite_struct *mite )
{
  {
  return ((mite->pcidev)->irq);
}
}
__inline static unsigned int mite_device_id(struct mite_struct *mite )
{
  {
  return ((unsigned int )(mite->pcidev)->device);
}
}
extern int mite_setup(struct mite_struct * ) ;
extern void mite_unsetup(struct mite_struct * ) ;
extern void mite_list_devices(void) ;
extern struct mite_channel *mite_request_channel_in_range(struct mite_struct * , struct mite_dma_descriptor_ring * ,
                                                          unsigned int , unsigned int ) ;
extern void mite_release_channel(struct mite_channel * ) ;
extern void mite_dma_arm(struct mite_channel * ) ;
extern void mite_dma_disarm(struct mite_channel * ) ;
extern int mite_sync_input_dma(struct mite_channel * , struct comedi_async * ) ;
extern unsigned int mite_get_status(struct mite_channel * ) ;
extern void mite_prep_dma(struct mite_channel * , unsigned int , unsigned int ) ;
extern int mite_buf_change(struct mite_dma_descriptor_ring * , struct comedi_async * ) ;
__inline static int CHAN_OFFSET(int channel )
{
  {
  return ((channel + 5) * 256);
}
}
__inline static int MITE_CHOR(int channel )
{
  int tmp ;
  {
  tmp = CHAN_OFFSET(channel);
  return (tmp);
}
}
__inline static void mite_dma_reset(struct mite_channel *mite_chan )
{
  int tmp ;
  {
  tmp = MITE_CHOR((int )mite_chan->channel);
  writel(2147483664U, (void volatile *)(mite_chan->mite)->mite_io_addr + (unsigned long )tmp);
  return;
}
}
extern int subdev_8255_init(struct comedi_device * , struct comedi_subdevice * , int (*)(int ,
                                                                                         int ,
                                                                                         int ,
                                                                                         unsigned long ) ,
                            unsigned long ) ;
extern void subdev_8255_cleanup(struct comedi_device * , struct comedi_subdevice * ) ;
__inline static unsigned int primary_DMAChannel_bits(unsigned int channel )
{
  {
  return (channel & 3U);
}
}
__inline static unsigned int secondary_DMAChannel_bits(unsigned int channel )
{
  {
  return ((channel << 2) & 12U);
}
}
static int nidio_attach(struct comedi_device *dev , struct comedi_devconfig *it ) ;
static int nidio_detach(struct comedi_device *dev ) ;
static int ni_pcidio_cancel(struct comedi_device *dev , struct comedi_subdevice *s ) ;
static struct comedi_driver driver_pcidio =
     {0, "ni_pcidio", & __this_module, & nidio_attach, & nidio_detach, 0U, 0, 0};
static struct nidio_board const nidio_boards[10U] =
  { {4432, "pci-dio-32hs", 0, 1U, (unsigned char)0},
        {4896, "pxi-6533", 0, 1U, (unsigned char)0},
        {4784, "pci-6534", 0, 1U, 1U},
        {352, "pci-dio-96", 4, 0U, (unsigned char)0},
        {5680, "pci-dio-96b", 4, 0U, (unsigned char)0},
        {5056, "pxi-6508", 4, 0U, (unsigned char)0},
        {1024, "pci-6503", 1, 0U, (unsigned char)0},
        {4688, "pci-6503b", 1, 0U, (unsigned char)0},
        {6096, "pci-6503x", 1, 0U, (unsigned char)0},
        {6144, "pxi-6503", 1, 0U, (unsigned char)0}};
static struct pci_device_id const ni_pcidio_pci_table[11U] =
  { {4243U, 4432U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4243U, 4896U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4243U, 4784U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4243U, 352U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4243U, 5680U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4243U, 5056U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4243U, 1024U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4243U, 4688U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4243U, 6096U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4243U, 6144U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {0U, 0U, 0U, 0U, 0U, 0U, 0UL}};
struct pci_device_id const __mod_pci_device_table ;
static int ni_pcidio_cmdtest(struct comedi_device *dev , struct comedi_subdevice *s ,
                             struct comedi_cmd *cmd ) ;
static int ni_pcidio_cmd(struct comedi_device *dev , struct comedi_subdevice *s ) ;
static int ni_pcidio_inttrig(struct comedi_device *dev , struct comedi_subdevice *s ,
                             unsigned int trignum ) ;
static int nidio_find_device(struct comedi_device *dev , int bus , int slot ) ;
static int ni_pcidio_ns_to_timer(int *nanosec , int round_mode ) ;
static int setup_mite_dma(struct comedi_device *dev , struct comedi_subdevice *s ) ;
static int ni_pcidio_request_di_mite_channel(struct comedi_device *dev )
{
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  long tmp___0 ;
  unsigned int tmp___1 ;
  unsigned int tmp___2 ;
  {
  tmp = spinlock_check(& ((struct nidio96_private *)dev->private)->mite_channel_lock);
  flags = _raw_spin_lock_irqsave(tmp);
  tmp___0 = ldv__builtin_expect((unsigned long )((struct nidio96_private *)dev->private)->di_mite_chan != (unsigned long )((struct mite_channel *)0),
                             0L);
  if (tmp___0 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/vladimir/commit-test/commit-test-work/task-051--linux-stable--dir/work/current--X--drivers/staging/comedi/drivers/ni_pcidio.ko--X--defaultlinux-stable-adbbc36--X--107_1a--X--cpachecker/linux-stable-adbbc36/csd_deg_dscv/11/dscv_tempdir/dscv/ri/107_1a/drivers/staging/comedi/drivers/ni_pcidio.c.prepared"),
                         "i" (436), "i" (12UL));
    ldv_24448: ;
    goto ldv_24448;
  } else {
  }
  ((struct nidio96_private *)dev->private)->di_mite_chan = mite_request_channel_in_range(((struct nidio96_private *)dev->private)->mite,
                                                                                         ((struct nidio96_private *)dev->private)->di_mite_ring,
                                                                                         1U,
                                                                                         2U);
  if ((unsigned long )((struct nidio96_private *)dev->private)->di_mite_chan == (unsigned long )((struct mite_channel *)0)) {
    spin_unlock_irqrestore(& ((struct nidio96_private *)dev->private)->mite_channel_lock,
                           flags);
    comedi_error((struct comedi_device const *)dev, "failed to reserve mite dma channel.");
    return (-16);
  } else {
  }
  tmp___1 = primary_DMAChannel_bits((((struct nidio96_private *)dev->private)->di_mite_chan)->channel);
  tmp___2 = secondary_DMAChannel_bits((((struct nidio96_private *)dev->private)->di_mite_chan)->channel);
  writeb((int )((unsigned char )tmp___1) | (int )((unsigned char )tmp___2), (void volatile *)(((struct nidio96_private *)dev->private)->mite)->daq_io_addr + 76U);
  __asm__ volatile ("": : : "memory");
  spin_unlock_irqrestore(& ((struct nidio96_private *)dev->private)->mite_channel_lock,
                         flags);
  return (0);
}
}
static void ni_pcidio_release_di_mite_channel(struct comedi_device *dev )
{
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  {
  tmp = spinlock_check(& ((struct nidio96_private *)dev->private)->mite_channel_lock);
  flags = _raw_spin_lock_irqsave(tmp);
  if ((unsigned long )((struct nidio96_private *)dev->private)->di_mite_chan != (unsigned long )((struct mite_channel *)0)) {
    mite_dma_disarm(((struct nidio96_private *)dev->private)->di_mite_chan);
    mite_dma_reset(((struct nidio96_private *)dev->private)->di_mite_chan);
    mite_release_channel(((struct nidio96_private *)dev->private)->di_mite_chan);
    ((struct nidio96_private *)dev->private)->di_mite_chan = 0;
    tmp___0 = primary_DMAChannel_bits(0U);
    tmp___1 = secondary_DMAChannel_bits(0U);
    writeb((int )((unsigned char )tmp___0) | (int )((unsigned char )tmp___1), (void volatile *)(((struct nidio96_private *)dev->private)->mite)->daq_io_addr + 76U);
    __asm__ volatile ("": : : "memory");
  } else {
  }
  spin_unlock_irqrestore(& ((struct nidio96_private *)dev->private)->mite_channel_lock,
                         flags);
  return;
}
}
static int nidio96_8255_cb(int dir , int port , int data , unsigned long iobase )
{
  unsigned char tmp ;
  {
  if (dir != 0) {
    writeb((int )((unsigned char )data), (void volatile *)((unsigned long )port + iobase));
    return (0);
  } else {
    tmp = readb((void const volatile *)((unsigned long )port + iobase));
    return ((int )tmp);
  }
}
}
void ni_pcidio_event(struct comedi_device *dev , struct comedi_subdevice *s )
{
  {
  if (((s->async)->events & 50U) != 0U) {
    ni_pcidio_cancel(dev, s);
  } else {
  }
  comedi_event(dev, s);
  return;
}
}
static irqreturn_t nidio_interrupt(int irq , void *d )
{
  struct comedi_device *dev ;
  struct comedi_subdevice *s ;
  struct comedi_async *async ;
  struct mite_struct *mite ;
  long AuxData ;
  short data1 ;
  short data2 ;
  int flags ;
  int status ;
  int work ;
  unsigned int m_status ;
  unsigned long irq_flags ;
  unsigned char tmp ;
  unsigned char tmp___0 ;
  raw_spinlock_t *tmp___1 ;
  int tmp___2 ;
  unsigned int tmp___3 ;
  unsigned char tmp___4 ;
  unsigned char tmp___5 ;
  unsigned char tmp___6 ;
  {
  dev = (struct comedi_device *)d;
  s = dev->subdevices;
  async = s->async;
  mite = ((struct nidio96_private *)dev->private)->mite;
  AuxData = 0L;
  data1 = 0;
  data2 = 0;
  work = 0;
  m_status = 0U;
  if (dev->attached == 0) {
    return (0);
  } else {
  }
  tmp = readb((void const volatile *)(((struct nidio96_private *)dev->private)->mite)->daq_io_addr + 4U);
  status = (int )tmp;
  tmp___0 = readb((void const volatile *)(((struct nidio96_private *)dev->private)->mite)->daq_io_addr + 6U);
  flags = (int )tmp___0;
  tmp___1 = spinlock_check(& ((struct nidio96_private *)dev->private)->mite_channel_lock);
  irq_flags = _raw_spin_lock_irqsave(tmp___1);
  if ((unsigned long )((struct nidio96_private *)dev->private)->di_mite_chan != (unsigned long )((struct mite_channel *)0)) {
    m_status = mite_get_status(((struct nidio96_private *)dev->private)->di_mite_chan);
  } else {
  }
  if ((int )m_status < 0) {
    if ((m_status & 524288U) != 0U) {
      tmp___2 = MITE_CHOR((int )(((struct nidio96_private *)dev->private)->di_mite_chan)->channel);
      writel(32U, (void volatile *)mite->mite_io_addr + (unsigned long )tmp___2);
      mite_sync_input_dma(((struct nidio96_private *)dev->private)->di_mite_chan,
                          s->async);
    } else {
    }
    if ((m_status & 2102919039U) != 0U) {
      async->events = async->events | 18U;
      disable_irq(dev->irq);
    } else {
    }
  } else {
  }
  spin_unlock_irqrestore(& ((struct nidio96_private *)dev->private)->mite_channel_lock,
                         irq_flags);
  goto ldv_24491;
  ldv_24490:
  work = work + 1;
  if (work > 20) {
    writeb(0, (void volatile *)(((struct nidio96_private *)dev->private)->mite)->daq_io_addr + 5U);
    goto ldv_24485;
  } else {
  }
  flags = flags & 226;
  if (flags & 1) {
    goto ldv_24488;
    ldv_24487:
    work = work + 1;
    if (work > 100) {
      writeb(0, (void volatile *)(((struct nidio96_private *)dev->private)->mite)->daq_io_addr + 5U);
      goto out;
    } else {
    }
    tmp___3 = readl((void const volatile *)(((struct nidio96_private *)dev->private)->mite)->daq_io_addr + 8U);
    AuxData = (long )tmp___3;
    data1 = (short )AuxData;
    data2 = (short )((AuxData & 4294901760L) >> 16);
    comedi_buf_put(async, (int )data1);
    comedi_buf_put(async, (int )data2);
    tmp___4 = readb((void const volatile *)(((struct nidio96_private *)dev->private)->mite)->daq_io_addr + 6U);
    flags = (int )tmp___4;
    ldv_24488: ;
    if (flags & 1) {
      goto ldv_24487;
    } else {
    }
    async->events = async->events | 4U;
  } else {
  }
  if ((flags & 2) != 0) {
    writeb(1, (void volatile *)(((struct nidio96_private *)dev->private)->mite)->daq_io_addr + 46U);
    async->events = async->events | 2U;
    writeb(0, (void volatile *)(((struct nidio96_private *)dev->private)->mite)->daq_io_addr + 65U);
    goto ldv_24485;
  } else
  if ((flags & 32) != 0) {
    writeb(8, (void volatile *)(((struct nidio96_private *)dev->private)->mite)->daq_io_addr + 6U);
    async->events = async->events | 18U;
    goto ldv_24485;
  } else
  if ((flags & 64) != 0) {
    writeb(16, (void volatile *)(((struct nidio96_private *)dev->private)->mite)->daq_io_addr + 6U);
    async->events = async->events | 2U;
  } else
  if ((flags & 128) != 0) {
    writeb(32, (void volatile *)(((struct nidio96_private *)dev->private)->mite)->daq_io_addr + 6U);
    async->events = async->events | 2U;
  } else {
  }
  tmp___5 = readb((void const volatile *)(((struct nidio96_private *)dev->private)->mite)->daq_io_addr + 6U);
  flags = (int )tmp___5;
  tmp___6 = readb((void const volatile *)(((struct nidio96_private *)dev->private)->mite)->daq_io_addr + 4U);
  status = (int )tmp___6;
  ldv_24491: ;
  if (status & 1) {
    goto ldv_24490;
  } else {
  }
  ldv_24485: ;
  out:
  ni_pcidio_event(dev, s);
  return (1);
}
}
static int ni_pcidio_insn_config(struct comedi_device *dev , struct comedi_subdevice *s ,
                                 struct comedi_insn *insn , unsigned int *data )
{
  {
  if (insn->n != 1U) {
    return (-22);
  } else {
  }
  switch (*data) {
  case 1U:
  s->io_bits = s->io_bits | (1 << ((int )insn->chanspec & 65535));
  goto ldv_24499;
  case 0U:
  s->io_bits = s->io_bits & ~ (1 << ((int )insn->chanspec & 65535));
  goto ldv_24499;
  case 28U:
  *(data + 1UL) = (unsigned int )(s->io_bits >> ((int )insn->chanspec & 65535)) & 1U;
  return ((int )insn->n);
  default: ;
  return (-22);
  }
  ldv_24499:
  writel((unsigned int )s->io_bits, (void volatile *)(((struct nidio96_private *)dev->private)->mite)->daq_io_addr + 32U);
  return (1);
}
}
static int ni_pcidio_insn_bits(struct comedi_device *dev , struct comedi_subdevice *s ,
                               struct comedi_insn *insn , unsigned int *data )
{
  {
  if (insn->n != 2U) {
    return (-22);
  } else {
  }
  if (*data != 0U) {
    s->state = s->state & ~ *data;
    s->state = s->state | (*data & *(data + 1UL));
    writel(s->state, (void volatile *)(((struct nidio96_private *)dev->private)->mite)->daq_io_addr + 28U);
  } else {
  }
  *(data + 1UL) = readl((void const volatile *)(((struct nidio96_private *)dev->private)->mite)->daq_io_addr + 28U);
  return (2);
}
}
static int ni_pcidio_cmdtest(struct comedi_device *dev , struct comedi_subdevice *s ,
                             struct comedi_cmd *cmd )
{
  int err ;
  int tmp ;
  {
  err = 0;
  tmp = (int )cmd->start_src;
  cmd->start_src = cmd->start_src & 130U;
  if (cmd->start_src == 0U || (unsigned int )tmp != cmd->start_src) {
    err = err + 1;
  } else {
  }
  tmp = (int )cmd->scan_begin_src;
  cmd->scan_begin_src = cmd->scan_begin_src & 80U;
  if (cmd->scan_begin_src == 0U || (unsigned int )tmp != cmd->scan_begin_src) {
    err = err + 1;
  } else {
  }
  tmp = (int )cmd->convert_src;
  cmd->convert_src = cmd->convert_src & 2U;
  if (cmd->convert_src == 0U || (unsigned int )tmp != cmd->convert_src) {
    err = err + 1;
  } else {
  }
  tmp = (int )cmd->scan_end_src;
  cmd->scan_end_src = cmd->scan_end_src & 32U;
  if (cmd->scan_end_src == 0U || (unsigned int )tmp != cmd->scan_end_src) {
    err = err + 1;
  } else {
  }
  tmp = (int )cmd->stop_src;
  cmd->stop_src = cmd->stop_src & 33U;
  if (cmd->stop_src == 0U || (unsigned int )tmp != cmd->stop_src) {
    err = err + 1;
  } else {
  }
  if (err != 0) {
    return (1);
  } else {
  }
  if (cmd->start_src != 2U && cmd->start_src != 128U) {
    err = err + 1;
  } else {
  }
  if (cmd->scan_begin_src != 16U && cmd->scan_begin_src != 64U) {
    err = err + 1;
  } else {
  }
  if (err != 0) {
    return (2);
  } else {
  }
  if (cmd->start_arg != 0U) {
    cmd->start_arg = 0U;
    err = err + 1;
  } else {
  }
  if (cmd->scan_begin_src == 16U) {
    if (cmd->scan_begin_arg <= 49U) {
      cmd->scan_begin_arg = 50U;
      err = err + 1;
    } else {
    }
  } else
  if (cmd->scan_begin_arg != 0U) {
    cmd->scan_begin_arg = 0U;
    err = err + 1;
  } else {
  }
  if (cmd->convert_arg != 0U) {
    cmd->convert_arg = 0U;
    err = err + 1;
  } else {
  }
  if (cmd->scan_end_arg != cmd->chanlist_len) {
    cmd->scan_end_arg = cmd->chanlist_len;
    err = err + 1;
  } else {
  }
  if (cmd->stop_src == 32U) {
  } else
  if (cmd->stop_arg != 0U) {
    cmd->stop_arg = 0U;
    err = err + 1;
  } else {
  }
  if (err != 0) {
    return (3);
  } else {
  }
  if (cmd->scan_begin_src == 16U) {
    tmp = (int )cmd->scan_begin_arg;
    ni_pcidio_ns_to_timer((int *)(& cmd->scan_begin_arg), (int )cmd->flags & 196608);
    if ((unsigned int )tmp != cmd->scan_begin_arg) {
      err = err + 1;
    } else {
    }
  } else {
  }
  if (err != 0) {
    return (4);
  } else {
  }
  return (0);
}
}
static int ni_pcidio_ns_to_timer(int *nanosec , int round_mode )
{
  int divider ;
  int base ;
  {
  base = 50;
  switch (round_mode) {
  case 0: ;
  default:
  divider = (*nanosec + base / 2) / base;
  goto ldv_24524;
  case 65536:
  divider = *nanosec / base;
  goto ldv_24524;
  case 131072:
  divider = ((*nanosec + base) + -1) / base;
  goto ldv_24524;
  }
  ldv_24524:
  *nanosec = base * divider;
  return (divider);
}
}
static int ni_pcidio_cmd(struct comedi_device *dev , struct comedi_subdevice *s )
{
  struct comedi_cmd *cmd ;
  int tmp ;
  int retval ;
  int tmp___0 ;
  {
  cmd = & (s->async)->cmd;
  writel(0U, (void volatile *)(((struct nidio96_private *)dev->private)->mite)->daq_io_addr + 32U);
  writeb(15, (void volatile *)(((struct nidio96_private *)dev->private)->mite)->daq_io_addr + 64U);
  writeb(0, (void volatile *)(((struct nidio96_private *)dev->private)->mite)->daq_io_addr + 77U);
  if (cmd->scan_begin_src == 16U) {
    writeb(0, (void volatile *)(((struct nidio96_private *)dev->private)->mite)->daq_io_addr + 65U);
    writeb(0, (void volatile *)(((struct nidio96_private *)dev->private)->mite)->daq_io_addr + 66U);
    writeb(1, (void volatile *)(((struct nidio96_private *)dev->private)->mite)->daq_io_addr + 67U);
    writeb(4, (void volatile *)(((struct nidio96_private *)dev->private)->mite)->daq_io_addr + 70U);
    writeb(4, (void volatile *)(((struct nidio96_private *)dev->private)->mite)->daq_io_addr + 71U);
    writeb(3, (void volatile *)(((struct nidio96_private *)dev->private)->mite)->daq_io_addr + 73U);
    writeb(192, (void volatile *)(((struct nidio96_private *)dev->private)->mite)->daq_io_addr + 74U);
    tmp = ni_pcidio_ns_to_timer((int *)(& cmd->scan_begin_arg), 0);
    writel((unsigned int )tmp, (void volatile *)(((struct nidio96_private *)dev->private)->mite)->daq_io_addr + 88U);
    writeb(1, (void volatile *)(((struct nidio96_private *)dev->private)->mite)->daq_io_addr + 82U);
    writeb(1, (void volatile *)(((struct nidio96_private *)dev->private)->mite)->daq_io_addr + 83U);
    writeb(1, (void volatile *)(((struct nidio96_private *)dev->private)->mite)->daq_io_addr + 84U);
    writeb(11, (void volatile *)(((struct nidio96_private *)dev->private)->mite)->daq_io_addr + 85U);
    writeb(1, (void volatile *)(((struct nidio96_private *)dev->private)->mite)->daq_io_addr + 86U);
    writew(0, (void volatile *)(((struct nidio96_private *)dev->private)->mite)->daq_io_addr + 68U);
    writeb(0, (void volatile *)(((struct nidio96_private *)dev->private)->mite)->daq_io_addr + 79U);
  } else {
    writeb(0, (void volatile *)(((struct nidio96_private *)dev->private)->mite)->daq_io_addr + 65U);
    writeb(0, (void volatile *)(((struct nidio96_private *)dev->private)->mite)->daq_io_addr + 66U);
    writeb(0, (void volatile *)(((struct nidio96_private *)dev->private)->mite)->daq_io_addr + 67U);
    writeb(0, (void volatile *)(((struct nidio96_private *)dev->private)->mite)->daq_io_addr + 70U);
    writeb(4, (void volatile *)(((struct nidio96_private *)dev->private)->mite)->daq_io_addr + 71U);
    writeb(0, (void volatile *)(((struct nidio96_private *)dev->private)->mite)->daq_io_addr + 73U);
    writeb(0, (void volatile *)(((struct nidio96_private *)dev->private)->mite)->daq_io_addr + 74U);
    writel(1U, (void volatile *)(((struct nidio96_private *)dev->private)->mite)->daq_io_addr + 88U);
    writeb(1, (void volatile *)(((struct nidio96_private *)dev->private)->mite)->daq_io_addr + 82U);
    writeb(1, (void volatile *)(((struct nidio96_private *)dev->private)->mite)->daq_io_addr + 83U);
    writeb(1, (void volatile *)(((struct nidio96_private *)dev->private)->mite)->daq_io_addr + 84U);
    writeb(12, (void volatile *)(((struct nidio96_private *)dev->private)->mite)->daq_io_addr + 85U);
    writeb(16, (void volatile *)(((struct nidio96_private *)dev->private)->mite)->daq_io_addr + 86U);
    writew(0, (void volatile *)(((struct nidio96_private *)dev->private)->mite)->daq_io_addr + 68U);
    writeb(96, (void volatile *)(((struct nidio96_private *)dev->private)->mite)->daq_io_addr + 79U);
  }
  if (cmd->stop_src == 32U) {
    writel(cmd->stop_arg, (void volatile *)(((struct nidio96_private *)dev->private)->mite)->daq_io_addr + 20U);
  } else {
  }
  writeb(48, (void volatile *)(((struct nidio96_private *)dev->private)->mite)->daq_io_addr + 6U);
  tmp___0 = setup_mite_dma(dev, s);
  retval = tmp___0;
  if (retval != 0) {
    return (retval);
  } else {
  }
  writeb(0, (void volatile *)(((struct nidio96_private *)dev->private)->mite)->daq_io_addr + 108U);
  writeb(255, (void volatile *)(((struct nidio96_private *)dev->private)->mite)->daq_io_addr + 6U);
  writeb(226, (void volatile *)(((struct nidio96_private *)dev->private)->mite)->daq_io_addr + 75U);
  writeb(3, (void volatile *)(((struct nidio96_private *)dev->private)->mite)->daq_io_addr + 5U);
  if (cmd->stop_src == 1U) {
    ((struct nidio96_private *)dev->private)->OpModeBits = 7U;
  } else {
    ((struct nidio96_private *)dev->private)->OpModeBits = 15U;
  }
  if (cmd->start_src == 2U) {
    writeb((int )((unsigned char )((struct nidio96_private *)dev->private)->OpModeBits),
           (void volatile *)(((struct nidio96_private *)dev->private)->mite)->daq_io_addr + 65U);
    (s->async)->inttrig = 0;
  } else {
    (s->async)->inttrig = & ni_pcidio_inttrig;
  }
  return (0);
}
}
static int setup_mite_dma(struct comedi_device *dev , struct comedi_subdevice *s )
{
  int retval ;
  {
  retval = ni_pcidio_request_di_mite_channel(dev);
  if (retval != 0) {
    return (retval);
  } else {
  }
  (((struct nidio96_private *)dev->private)->di_mite_chan)->dir = 0;
  mite_prep_dma(((struct nidio96_private *)dev->private)->di_mite_chan, 32U, 32U);
  mite_dma_arm(((struct nidio96_private *)dev->private)->di_mite_chan);
  return (0);
}
}
static int ni_pcidio_inttrig(struct comedi_device *dev , struct comedi_subdevice *s ,
                             unsigned int trignum )
{
  {
  if (trignum != 0U) {
    return (-22);
  } else {
  }
  writeb((int )((unsigned char )((struct nidio96_private *)dev->private)->OpModeBits),
         (void volatile *)(((struct nidio96_private *)dev->private)->mite)->daq_io_addr + 65U);
  (s->async)->inttrig = 0;
  return (1);
}
}
static int ni_pcidio_cancel(struct comedi_device *dev , struct comedi_subdevice *s )
{
  {
  writeb(0, (void volatile *)(((struct nidio96_private *)dev->private)->mite)->daq_io_addr + 5U);
  ni_pcidio_release_di_mite_channel(dev);
  return (0);
}
}
static int ni_pcidio_change(struct comedi_device *dev , struct comedi_subdevice *s ,
                            unsigned long new_size )
{
  int ret ;
  {
  ret = mite_buf_change(((struct nidio96_private *)dev->private)->di_mite_ring, s->async);
  if (ret < 0) {
    return (ret);
  } else {
  }
  memset((s->async)->prealloc_buf, 170, (size_t )(s->async)->prealloc_bufsz);
  return (0);
}
}
static int pci_6534_load_fpga(struct comedi_device *dev , int fpga_index , u8 *data ,
                              int data_len )
{
  int timeout ;
  int i ;
  int j ;
  unsigned short tmp ;
  unsigned short tmp___0 ;
  unsigned int value ;
  int tmp___1 ;
  int tmp___2 ;
  unsigned short tmp___3 ;
  int tmp___4 ;
  {
  timeout = 1000;
  writew((int )((unsigned short )((int )((short )fpga_index) | 128)), (void volatile *)(((struct nidio96_private *)dev->private)->mite)->daq_io_addr + 256U);
  writew((int )((unsigned short )((int )((short )fpga_index) | 192)), (void volatile *)(((struct nidio96_private *)dev->private)->mite)->daq_io_addr + 256U);
  i = 0;
  goto ldv_24563;
  ldv_24562:
  __const_udelay(4295UL);
  i = i + 1;
  ldv_24563:
  tmp = readw((void const volatile *)(((struct nidio96_private *)dev->private)->mite)->daq_io_addr + 260U);
  if (((int )tmp & 2) == 0 && i < timeout) {
    goto ldv_24562;
  } else {
  }
  if (i == timeout) {
    printk("<4>ni_pcidio: failed to load fpga %i, waiting for status 0x2\n", fpga_index);
    return (-5);
  } else {
  }
  writew((int )((unsigned short )((int )((short )fpga_index) | 128)), (void volatile *)(((struct nidio96_private *)dev->private)->mite)->daq_io_addr + 256U);
  i = 0;
  goto ldv_24566;
  ldv_24565:
  __const_udelay(4295UL);
  i = i + 1;
  ldv_24566:
  tmp___0 = readw((void const volatile *)(((struct nidio96_private *)dev->private)->mite)->daq_io_addr + 260U);
  if ((unsigned int )tmp___0 != 3U && i < timeout) {
    goto ldv_24565;
  } else {
  }
  if (i == timeout) {
    printk("<4>ni_pcidio: failed to load fpga %i, waiting for status 0x3\n", fpga_index);
    return (-5);
  } else {
  }
  j = 0;
  goto ldv_24573;
  ldv_24572:
  tmp___1 = j;
  j = j + 1;
  value = (unsigned int )*(data + (unsigned long )tmp___1);
  tmp___2 = j;
  j = j + 1;
  value = (unsigned int )((int )*(data + (unsigned long )tmp___2) << 8) | value;
  writew((int )((unsigned short )value), (void volatile *)(((struct nidio96_private *)dev->private)->mite)->daq_io_addr + 264U);
  i = 0;
  goto ldv_24570;
  ldv_24569:
  __const_udelay(4295UL);
  i = i + 1;
  ldv_24570:
  tmp___3 = readw((void const volatile *)(((struct nidio96_private *)dev->private)->mite)->daq_io_addr + 260U);
  if (((int )tmp___3 & 2) == 0 && i < timeout) {
    goto ldv_24569;
  } else {
  }
  if (i == timeout) {
    printk("ni_pcidio: failed to load word into fpga %i\n", fpga_index);
    return (-5);
  } else {
  }
  tmp___4 = need_resched();
  if (tmp___4 != 0) {
    schedule();
  } else {
  }
  ldv_24573: ;
  if (j + 1 < data_len) {
    goto ldv_24572;
  } else {
  }
  writew(0, (void volatile *)(((struct nidio96_private *)dev->private)->mite)->daq_io_addr + 256U);
  return (0);
}
}
static int pci_6534_reset_fpga(struct comedi_device *dev , int fpga_index )
{
  int tmp ;
  {
  tmp = pci_6534_load_fpga(dev, fpga_index, 0, 0);
  return (tmp);
}
}
static int pci_6534_reset_fpgas(struct comedi_device *dev )
{
  int ret ;
  int i ;
  {
  writew(0, (void volatile *)(((struct nidio96_private *)dev->private)->mite)->daq_io_addr + 256U);
  i = 0;
  goto ldv_24586;
  ldv_24585:
  ret = pci_6534_reset_fpga(dev, i);
  if (ret < 0) {
    goto ldv_24584;
  } else {
  }
  i = i + 1;
  ldv_24586: ;
  if (i <= 2) {
    goto ldv_24585;
  } else {
  }
  ldv_24584:
  writew(0, (void volatile *)(((struct nidio96_private *)dev->private)->mite)->daq_io_addr + 268U);
  return (ret);
}
}
static void pci_6534_init_main_fpga(struct comedi_device *dev )
{
  {
  writel(0U, (void volatile *)(((struct nidio96_private *)dev->private)->mite)->daq_io_addr + 512U);
  writel(0U, (void volatile *)(((struct nidio96_private *)dev->private)->mite)->daq_io_addr + 516U);
  writel(0U, (void volatile *)(((struct nidio96_private *)dev->private)->mite)->daq_io_addr + 640U);
  writel(0U, (void volatile *)(((struct nidio96_private *)dev->private)->mite)->daq_io_addr + 644U);
  writel(0U, (void volatile *)(((struct nidio96_private *)dev->private)->mite)->daq_io_addr + 648U);
  writel(0U, (void volatile *)(((struct nidio96_private *)dev->private)->mite)->daq_io_addr + 652U);
  return;
}
}
static int pci_6534_upload_firmware(struct comedi_device *dev , int *options )
{
  int ret ;
  void *main_fpga_data ;
  void *scarab_a_data ;
  void *scarab_b_data ;
  int main_fpga_data_len ;
  int scarab_a_data_len ;
  int scarab_b_data_len ;
  {
  if (*(options + 31UL) == 0) {
    return (0);
  } else {
  }
  ret = pci_6534_reset_fpgas(dev);
  if (ret < 0) {
    return (ret);
  } else {
  }
  main_fpga_data = comedi_aux_data(options, 0);
  main_fpga_data_len = *(options + 28UL);
  ret = pci_6534_load_fpga(dev, 2, (u8 *)main_fpga_data, main_fpga_data_len);
  if (ret < 0) {
    return (ret);
  } else {
  }
  pci_6534_init_main_fpga(dev);
  scarab_a_data = comedi_aux_data(options, 1);
  scarab_a_data_len = *(options + 27UL);
  ret = pci_6534_load_fpga(dev, 0, (u8 *)scarab_a_data, scarab_a_data_len);
  if (ret < 0) {
    return (ret);
  } else {
  }
  scarab_b_data = comedi_aux_data(options, 2);
  scarab_b_data_len = *(options + 26UL);
  ret = pci_6534_load_fpga(dev, 1, (u8 *)scarab_b_data, scarab_b_data_len);
  if (ret < 0) {
    return (ret);
  } else {
  }
  return (0);
}
}
static int nidio_attach(struct comedi_device *dev , struct comedi_devconfig *it )
{
  struct comedi_subdevice *s ;
  int i ;
  int ret ;
  int n_subdevices ;
  unsigned int irq ;
  struct lock_class_key __key ;
  unsigned char tmp ;
  {
  printk("<6>comedi%d: nidio:", dev->minor);
  ret = alloc_private(dev, 112);
  if (ret < 0) {
    return (ret);
  } else {
  }
  spinlock_check(& ((struct nidio96_private *)dev->private)->mite_channel_lock);
  __raw_spin_lock_init(& ((struct nidio96_private *)dev->private)->mite_channel_lock.ldv_6531.rlock,
                       "&(&((struct nidio96_private *)dev->private)->mite_channel_lock)->rlock",
                       & __key);
  ret = nidio_find_device(dev, it->options[0], it->options[1]);
  if (ret < 0) {
    return (ret);
  } else {
  }
  ret = mite_setup(((struct nidio96_private *)dev->private)->mite);
  if (ret < 0) {
    printk("<4>error setting up mite\n");
    return (ret);
  } else {
  }
  comedi_set_hw_dev(dev, & ((((struct nidio96_private *)dev->private)->mite)->pcidev)->dev);
  ((struct nidio96_private *)dev->private)->di_mite_ring = mite_alloc_ring(((struct nidio96_private *)dev->private)->mite);
  if ((unsigned long )((struct nidio96_private *)dev->private)->di_mite_ring == (unsigned long )((struct mite_dma_descriptor_ring *)0)) {
    return (-12);
  } else {
  }
  dev->board_name = ((struct nidio_board const *)dev->board_ptr)->name;
  irq = mite_irq(((struct nidio96_private *)dev->private)->mite);
  printk("<6> %s", dev->board_name);
  if ((unsigned int )*((unsigned char *)((struct nidio_board const *)dev->board_ptr) + 20UL) != 0U) {
    ret = pci_6534_upload_firmware(dev, (int *)(& it->options));
    if (ret < 0) {
      return (ret);
    } else {
    }
  } else {
  }
  if ((unsigned int )*((unsigned char *)((struct nidio_board const *)dev->board_ptr) + 20UL) == 0U) {
    n_subdevices = ((struct nidio_board const *)dev->board_ptr)->n_8255;
  } else {
    n_subdevices = 1;
  }
  ret = alloc_subdevices(dev, (unsigned int )n_subdevices);
  if (ret < 0) {
    return (ret);
  } else {
  }
  if ((unsigned int )*((unsigned char *)((struct nidio_board const *)dev->board_ptr) + 20UL) == 0U) {
    i = 0;
    goto ldv_24612;
    ldv_24611:
    subdev_8255_init(dev, dev->subdevices + (unsigned long )i, & nidio96_8255_cb,
                     (unsigned long )((((struct nidio96_private *)dev->private)->mite)->daq_io_addr + (unsigned long )(i * 4)));
    i = i + 1;
    ldv_24612: ;
    if ((int )((struct nidio_board const *)dev->board_ptr)->n_8255 > i) {
      goto ldv_24611;
    } else {
    }
  } else {
    tmp = readb((void const volatile *)(((struct nidio96_private *)dev->private)->mite)->daq_io_addr + 27U);
    printk("<6> rev=%d", (int )tmp);
    s = dev->subdevices;
    dev->read_subdev = s;
    s->type = 5;
    s->subdev_flags = 805535744;
    s->n_chan = 32;
    s->range_table = & range_unipolar5;
    s->maxdata = 1U;
    s->insn_config = & ni_pcidio_insn_config;
    s->insn_bits = & ni_pcidio_insn_bits;
    s->do_cmd = & ni_pcidio_cmd;
    s->do_cmdtest = & ni_pcidio_cmdtest;
    s->cancel = & ni_pcidio_cancel;
    s->len_chanlist = 32;
    s->buf_change = & ni_pcidio_change;
    s->async_dma_dir = 0;
    writel(0U, (void volatile *)(((struct nidio96_private *)dev->private)->mite)->daq_io_addr + 28U);
    writel(0U, (void volatile *)(((struct nidio96_private *)dev->private)->mite)->daq_io_addr + 32U);
    writel(0U, (void volatile *)(((struct nidio96_private *)dev->private)->mite)->daq_io_addr + 36U);
    writeb(0, (void volatile *)(((struct nidio96_private *)dev->private)->mite)->daq_io_addr + 5U);
    ret = request_irq(irq, & nidio_interrupt, 128UL, "ni_pcidio", (void *)dev);
    if (ret < 0) {
      printk("<4> irq not available");
    } else {
    }
    dev->irq = irq;
  }
  printk("\n");
  return (0);
}
}
static int nidio_detach(struct comedi_device *dev )
{
  int i ;
  {
  if ((unsigned long )dev->board_ptr != (unsigned long )((void const *)0) && (unsigned int )*((unsigned char *)((struct nidio_board const *)dev->board_ptr) + 20UL) == 0U) {
    i = 0;
    goto ldv_24619;
    ldv_24618:
    subdev_8255_cleanup(dev, dev->subdevices + (unsigned long )i);
    i = i + 1;
    ldv_24619: ;
    if ((int )((struct nidio_board const *)dev->board_ptr)->n_8255 > i) {
      goto ldv_24618;
    } else {
    }
  } else {
  }
  if (dev->irq != 0U) {
    free_irq(dev->irq, (void *)dev);
  } else {
  }
  if ((unsigned long )dev->private != (unsigned long )((void *)0)) {
    if ((unsigned long )((struct nidio96_private *)dev->private)->di_mite_ring != (unsigned long )((struct mite_dma_descriptor_ring *)0)) {
      mite_free_ring(((struct nidio96_private *)dev->private)->di_mite_ring);
      ((struct nidio96_private *)dev->private)->di_mite_ring = 0;
    } else {
    }
    if ((unsigned long )((struct nidio96_private *)dev->private)->mite != (unsigned long )((struct mite_struct *)0)) {
      mite_unsetup(((struct nidio96_private *)dev->private)->mite);
    } else {
    }
  } else {
  }
  return (0);
}
}
static int nidio_find_device(struct comedi_device *dev , int bus , int slot )
{
  struct mite_struct *mite ;
  int i ;
  unsigned int tmp ;
  {
  mite = mite_devices;
  goto ldv_24635;
  ldv_24634: ;
  if (mite->used != 0) {
    goto ldv_24628;
  } else {
  }
  if (bus != 0 || slot != 0) {
    if ((int )((mite->pcidev)->bus)->number != bus || (unsigned int )slot != (((mite->pcidev)->devfn >> 3) & 31U)) {
      goto ldv_24628;
    } else {
    }
  } else {
  }
  i = 0;
  goto ldv_24632;
  ldv_24631:
  tmp = mite_device_id(mite);
  if (tmp == (unsigned int )nidio_boards[i].dev_id) {
    dev->board_ptr = (void const *)(& nidio_boards) + (unsigned long )i;
    ((struct nidio96_private *)dev->private)->mite = mite;
    return (0);
  } else {
  }
  i = i + 1;
  ldv_24632: ;
  if ((unsigned int )i <= 9U) {
    goto ldv_24631;
  } else {
  }
  ldv_24628:
  mite = mite->next;
  ldv_24635: ;
  if ((unsigned long )mite != (unsigned long )((struct mite_struct *)0)) {
    goto ldv_24634;
  } else {
  }
  printk("<4>no device found\n");
  mite_list_devices();
  return (-5);
}
}
static int driver_pcidio_pci_probe(struct pci_dev *dev , struct pci_device_id const *ent )
{
  int tmp ;
  {
  tmp = comedi_pci_auto_config(dev, driver_pcidio.driver_name);
  return (tmp);
}
}
static void driver_pcidio_pci_remove(struct pci_dev *dev )
{
  {
  comedi_pci_auto_unconfig(dev);
  return;
}
}
static struct pci_driver driver_pcidio_pci_driver =
     {{0, 0}, 0, (struct pci_device_id const *)(& ni_pcidio_pci_table), & driver_pcidio_pci_probe,
    & driver_pcidio_pci_remove, 0, 0, 0, 0, 0, 0, {0, 0, 0, 0, (_Bool)0, 0, 0, 0,
                                                   0, 0, 0, 0, 0}, {{{{{0U}, 0U, 0U,
                                                                       0, {0, {0,
                                                                               0},
                                                                           0, 0, 0UL}}}},
                                                                    {0, 0}}};
static int driver_pcidio_init_module(void)
{
  int retval ;
  int tmp ;
  {
  retval = comedi_driver_register(& driver_pcidio);
  if (retval < 0) {
    return (retval);
  } else {
  }
  driver_pcidio_pci_driver.name = driver_pcidio.driver_name;
  tmp = __pci_register_driver(& driver_pcidio_pci_driver, & __this_module, "ni_pcidio");
  return (tmp);
}
}
static void driver_pcidio_cleanup_module(void)
{
  {
  pci_unregister_driver(& driver_pcidio_pci_driver);
  comedi_driver_unregister(& driver_pcidio);
  return;
}
}
int ldv_module_author(void)
{
  {
  return (1);
}
}
int ldv_module_description(void)
{
  {
  return (1);
}
}
int ldv_module_license(void)
{
  {
  return (1);
}
}
void ldv_check_final_state(void) ;
extern void ldv_initialize(void) ;
extern void ldv_handler_precall(void) ;
extern int __VERIFIER_nondet_int(void) ;
int LDV_IN_INTERRUPT ;
int main(void)
{
  struct comedi_device *var_group1 ;
  struct comedi_devconfig *var_group2 ;
  int var_nidio_interrupt_6_p0 ;
  void *var_nidio_interrupt_6_p1 ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  ldv_handler_precall();
  tmp = driver_pcidio_init_module();
  if (tmp != 0) {
    goto ldv_final;
  } else {
  }
  goto ldv_24698;
  ldv_24697:
  tmp___0 = __VERIFIER_nondet_int();
  switch (tmp___0) {
  case 0:
  ldv_handler_precall();
  nidio_attach(var_group1, var_group2);
  goto ldv_24693;
  case 1:
  ldv_handler_precall();
  nidio_detach(var_group1);
  goto ldv_24693;
  case 2:
  LDV_IN_INTERRUPT = 2;
  ldv_handler_precall();
  nidio_interrupt(var_nidio_interrupt_6_p0, var_nidio_interrupt_6_p1);
  LDV_IN_INTERRUPT = 1;
  goto ldv_24693;
  default: ;
  goto ldv_24693;
  }
  ldv_24693: ;
  ldv_24698:
  tmp___1 = __VERIFIER_nondet_int();
  if (tmp___1 != 0) {
    goto ldv_24697;
  } else {
  }
  ldv_handler_precall();
  driver_pcidio_cleanup_module();
  ldv_final:
  ldv_check_final_state();
  return 0;
}
}
__inline static void ldv_error(void)
{
  {
  ERROR: __VERIFIER_error();
}
}
long ldv__builtin_expect(long exp , long c )
{
  {
  return (exp);
}
}
void ldv_check_final_state(void)
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tmp = ldv_module_license();
  if (tmp == 1) {
  } else {
    ldv_error();
  }
  tmp___0 = ldv_module_author();
  if (tmp___0 == 1) {
  } else {
    ldv_error();
  }
  tmp___1 = ldv_module_description();
  if (tmp___1 == 1) {
  } else {
    ldv_error();
  }
  return;
}
}
void __const_udelay(unsigned long arg0) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int __get_free_pages(gfp_t arg0, unsigned int arg1) {
  return __VERIFIER_nondet_ulong();
}
int __VERIFIER_nondet_int(void);
int __pci_register_driver(struct pci_driver *arg0, struct module *arg1, const char *arg2) {
  return __VERIFIER_nondet_int();
}
void __raw_spin_lock_init(raw_spinlock_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _raw_spin_lock_irqsave(raw_spinlock_t *arg0) {
  return __VERIFIER_nondet_ulong();
}
void _raw_spin_unlock_irqrestore(raw_spinlock_t *arg0, unsigned long arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int comedi_buf_put(struct comedi_async *arg0, short arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int comedi_driver_register(struct comedi_driver *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int comedi_driver_unregister(struct comedi_driver *arg0) {
  return __VERIFIER_nondet_int();
}
void comedi_error(const struct comedi_device *arg0, const char *arg1) {
  return;
}
void comedi_event(struct comedi_device *arg0, struct comedi_subdevice *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int comedi_pci_auto_config(struct pci_dev *arg0, const char *arg1) {
  return __VERIFIER_nondet_int();
}
void comedi_pci_auto_unconfig(struct pci_dev *arg0) {
  return;
}
void debug_dma_free_coherent(struct device *arg0, size_t arg1, void *arg2, dma_addr_t arg3) {
  return;
}
int __VERIFIER_nondet_int(void);
int debug_lockdep_rcu_enabled() {
  return __VERIFIER_nondet_int();
}
void disable_irq(unsigned int arg0) {
  return;
}
void free_irq(unsigned int arg0, void *arg1) {
  return;
}
void *external_alloc(void);
struct device *get_device(struct device *arg0) {
  return (struct device *)external_alloc();
}
void ldv_handler_precall() {
  return;
}
void ldv_initialize() {
  return;
}
void lockdep_rcu_dereference(const char *arg0, const int arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int mite_buf_change(struct mite_dma_descriptor_ring *arg0, struct comedi_async *arg1) {
  return __VERIFIER_nondet_int();
}
void mite_dma_arm(struct mite_channel *arg0) {
  return;
}
void mite_dma_disarm(struct mite_channel *arg0) {
  return;
}
unsigned int __VERIFIER_nondet_uint(void);
unsigned int mite_get_status(struct mite_channel *arg0) {
  return __VERIFIER_nondet_uint();
}
void mite_list_devices() {
  return;
}
void mite_prep_dma(struct mite_channel *arg0, unsigned int arg1, unsigned int arg2) {
  return;
}
void mite_release_channel(struct mite_channel *arg0) {
  return;
}
void *external_alloc(void);
struct mite_channel *mite_request_channel_in_range(struct mite_struct *arg0, struct mite_dma_descriptor_ring *arg1, unsigned int arg2, unsigned int arg3) {
  return (struct mite_channel *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int mite_setup(struct mite_struct *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int mite_sync_input_dma(struct mite_channel *arg0, struct comedi_async *arg1) {
  return __VERIFIER_nondet_int();
}
void mite_unsetup(struct mite_struct *arg0) {
  return;
}
void pci_unregister_driver(struct pci_driver *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
void put_device(struct device *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int request_threaded_irq(unsigned int arg0, irqreturn_t (*arg1)(int, void *), irqreturn_t (*arg2)(int, void *), unsigned long arg3, const char *arg4, void *arg5) {
  return __VERIFIER_nondet_int();
}
void schedule() {
  return;
}
void subdev_8255_cleanup(struct comedi_device *arg0, struct comedi_subdevice *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int subdev_8255_init(struct comedi_device *arg0, struct comedi_subdevice *arg1, int (*arg2)(int, int, int, unsigned long), unsigned long arg3) {
  return __VERIFIER_nondet_int();
}
void warn_slowpath_null(const char *arg0, const int arg1) {
  return;
}
void *__VERIFIER_external_alloc(void);
void *external_alloc(void) {
  return __VERIFIER_external_alloc();
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
