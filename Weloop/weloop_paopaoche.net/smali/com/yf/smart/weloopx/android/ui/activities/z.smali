.class public Lcom/yf/smart/weloopx/android/ui/activities/z;
.super Lcom/yf/smart/weloopx/android/ui/c/g;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/yf/smart/weloopx/android/ui/c/ah$a;
.implements Lcom/yf/smart/weloopx/android/ui/c/ca$a;
.implements Lcom/yf/smart/weloopx/android/ui/c/cc$a;
.implements Lcom/yf/smart/weloopx/f/h$a;
.implements Lcom/yf/smart/weloopx/g/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/smart/weloopx/android/ui/activities/z$1;,
        Lcom/yf/smart/weloopx/android/ui/activities/z$a;,
        Lcom/yf/smart/weloopx/android/ui/activities/z$b;,
        Lcom/yf/smart/weloopx/android/ui/activities/z$c;
    }
.end annotation


# static fields
.field public static c:Z

.field public static d:Z


# instance fields
.field private A:[B

.field private B:[B

.field private C:[B

.field private D:Landroid/app/DialogFragment;

.field private E:Lcom/yf/smart/weloopx/c/s;

.field private F:Lcom/yf/gattlib/client/d;

.field private G:Lcom/yf/smart/weloopx/b/b;

.field private H:Lcom/yf/smart/weloopx/data/a;

.field private final I:I

.field private final J:I

.field private final K:I

.field private final L:I

.field private final M:I

.field private N:Z

.field private O:Z

.field private P:Lcom/yf/smart/weloopx/android/ui/activities/z$a;

.field private Q:Landroid/view/View;

.field private R:Landroid/view/View;

.field private S:Landroid/view/View;

.field private T:Landroid/widget/RelativeLayout;

.field private U:Lcom/yf/gattlib/m/a/b;

.field private V:Ljava/lang/String;

.field private W:Ljava/lang/String;

.field private X:Landroid/graphics/drawable/AnimationDrawable;

.field private Y:Landroid/widget/RelativeLayout;

.field private Z:Landroid/widget/RelativeLayout;

.field protected a:Lb/a/a/a/a/a;

.field private aA:Landroid/view/View$OnClickListener;

.field private aB:Landroid/view/View$OnClickListener;

.field private aC:Landroid/view/View$OnClickListener;

.field private aD:Landroid/view/View$OnClickListener;

.field private aE:Landroid/view/View$OnClickListener;

.field private aF:Ljava/lang/Runnable;

.field private aG:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

.field private aH:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private aa:Landroid/widget/RelativeLayout;

.field private ab:Landroid/view/View;

.field private ac:Landroid/view/View;

.field private ad:Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;

.field private ae:Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;

.field private af:B

.field private ag:Z

.field private ah:Landroid/os/Handler;

.field private ai:Lcom/yf/smart/weloopx/data/l;

.field private aj:Lcom/yf/smart/weloopx/f/l;

.field private ak:Lcom/yf/smart/weloopx/f/h;

.field private al:I

.field private am:Lcom/yf/gattlib/d/b$a;

.field private an:Lcom/yf/gattlib/client/e;

.field private ao:Ljava/lang/String;

.field private ap:Lcom/yf/gattlib/a/f;

.field private aq:Lcom/yf/smart/weloopx/android/ui/activities/z$c;

.field private ar:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field private as:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private at:Landroid/view/View$OnClickListener;

.field private au:Landroid/view/View$OnClickListener;

.field private av:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private aw:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private ax:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private ay:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private az:Landroid/view/View$OnClickListener;

.field protected b:Lcom/yf/gattlib/a/b;

.field private e:Ljava/lang/String;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;

.field private r:Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;

.field private s:Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;

.field private t:Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;

.field private u:Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;

.field private v:Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;

.field private w:Landroid/widget/ImageView;

.field private x:Lcom/yf/smart/weloopx/android/ui/widget/DeviceTitle;

.field private y:Lcom/yf/smart/weloopx/c/v;

.field private z:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 150
    sput-boolean v0, Lcom/yf/smart/weloopx/android/ui/activities/z;->c:Z

    .line 151
    sput-boolean v0, Lcom/yf/smart/weloopx/android/ui/activities/z;->d:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 98
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/c/g;-><init>()V

    .line 105
    const-string v0, "DeviceFragment"

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->e:Ljava/lang/String;

    .line 126
    sget-object v0, Lcom/yf/smart/weloopx/c/v;->a:Lcom/yf/smart/weloopx/c/v;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->y:Lcom/yf/smart/weloopx/c/v;

    .line 135
    invoke-static {}, Lcom/yf/gattlib/client/d;->a()Lcom/yf/gattlib/client/d;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->F:Lcom/yf/gattlib/client/d;

    .line 139
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->I:I

    .line 140
    const/16 v0, 0x3ea

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->J:I

    .line 141
    const/16 v0, 0x3eb

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->K:I

    .line 142
    const v0, 0x19874

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->L:I

    .line 143
    const v0, 0x1639a

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->M:I

    .line 144
    iput-boolean v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->N:Z

    .line 149
    iput-boolean v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->O:Z

    .line 165
    iput-byte v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->af:B

    .line 166
    iput-boolean v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->ag:Z

    .line 177
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/aa;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/activities/aa;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/z;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->am:Lcom/yf/gattlib/d/b$a;

    .line 206
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/au;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/activities/au;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/z;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->an:Lcom/yf/gattlib/client/e;

    .line 263
    const-string v0, "new_firmware"

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->ao:Ljava/lang/String;

    .line 264
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/bi;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/activities/bi;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/z;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->ap:Lcom/yf/gattlib/a/f;

    .line 966
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/ad;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/activities/ad;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/z;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->aq:Lcom/yf/smart/weloopx/android/ui/activities/z$c;

    .line 1004
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/ae;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/activities/ae;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/z;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->ar:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 1043
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/af;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/activities/af;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/z;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->as:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 1080
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/aj;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/activities/aj;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/z;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->at:Landroid/view/View$OnClickListener;

    .line 1087
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/ak;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/activities/ak;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/z;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->au:Landroid/view/View$OnClickListener;

    .line 1097
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/al;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/activities/al;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/z;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->av:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 1133
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/ao;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/activities/ao;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/z;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->aw:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 1185
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/ar;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/activities/ar;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/z;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->ax:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 1217
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/aw;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/activities/aw;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/z;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->ay:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 1251
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/az;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/activities/az;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/z;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->az:Landroid/view/View$OnClickListener;

    .line 1291
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/bb;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/activities/bb;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/z;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->aA:Landroid/view/View$OnClickListener;

    .line 1301
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/bc;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/activities/bc;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/z;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->aB:Landroid/view/View$OnClickListener;

    .line 1318
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/bd;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/activities/bd;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/z;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->aC:Landroid/view/View$OnClickListener;

    .line 1328
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/be;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/activities/be;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/z;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->aD:Landroid/view/View$OnClickListener;

    .line 1338
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/bf;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/activities/bf;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/z;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->aE:Landroid/view/View$OnClickListener;

    .line 1787
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/bm;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/activities/bm;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/z;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->aF:Ljava/lang/Runnable;

    .line 1878
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/bo;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/activities/bo;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/z;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->aG:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .line 1969
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/bs;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/activities/bs;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/z;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->aH:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method static synthetic A(Lcom/yf/smart/weloopx/android/ui/activities/z;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->m:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic A(Lcom/yf/smart/weloopx/android/ui/activities/z;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->d(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic B(Lcom/yf/smart/weloopx/android/ui/activities/z;)Lcom/yf/smart/weloopx/c/v;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->y:Lcom/yf/smart/weloopx/c/v;

    return-object v0
.end method

.method static synthetic B(Lcom/yf/smart/weloopx/android/ui/activities/z;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->d(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic C(Lcom/yf/smart/weloopx/android/ui/activities/z;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->n:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic C(Lcom/yf/smart/weloopx/android/ui/activities/z;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->d(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic D(Lcom/yf/smart/weloopx/android/ui/activities/z;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->l:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic D(Lcom/yf/smart/weloopx/android/ui/activities/z;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->d(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic E(Lcom/yf/smart/weloopx/android/ui/activities/z;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->k:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic E(Lcom/yf/smart/weloopx/android/ui/activities/z;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->d(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic F(Lcom/yf/smart/weloopx/android/ui/activities/z;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->d(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic F(Lcom/yf/smart/weloopx/android/ui/activities/z;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->j()V

    return-void
.end method

.method static synthetic G(Lcom/yf/smart/weloopx/android/ui/activities/z;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->d(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic G(Lcom/yf/smart/weloopx/android/ui/activities/z;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->i()V

    return-void
.end method

.method static synthetic H(Lcom/yf/smart/weloopx/android/ui/activities/z;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->d(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic H(Lcom/yf/smart/weloopx/android/ui/activities/z;)Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->N:Z

    return v0
.end method

.method static synthetic I(Lcom/yf/smart/weloopx/android/ui/activities/z;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->d(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic I(Lcom/yf/smart/weloopx/android/ui/activities/z;)Z
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->l()Z

    move-result v0

    return v0
.end method

.method static synthetic J(Lcom/yf/smart/weloopx/android/ui/activities/z;)Landroid/widget/RadioGroup$OnCheckedChangeListener;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->ar:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    return-object v0
.end method

.method static synthetic J(Lcom/yf/smart/weloopx/android/ui/activities/z;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->d(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic K(Lcom/yf/smart/weloopx/android/ui/activities/z;)Lcom/yf/smart/weloopx/c/s;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->E:Lcom/yf/smart/weloopx/c/s;

    return-object v0
.end method

.method static synthetic K(Lcom/yf/smart/weloopx/android/ui/activities/z;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->d(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic L(Lcom/yf/smart/weloopx/android/ui/activities/z;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->d(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic L(Lcom/yf/smart/weloopx/android/ui/activities/z;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->k()V

    return-void
.end method

.method static synthetic M(Lcom/yf/smart/weloopx/android/ui/activities/z;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->c()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic M(Lcom/yf/smart/weloopx/android/ui/activities/z;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->d(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic N(Lcom/yf/smart/weloopx/android/ui/activities/z;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->c()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic N(Lcom/yf/smart/weloopx/android/ui/activities/z;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->d(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic O(Lcom/yf/smart/weloopx/android/ui/activities/z;)Landroid/view/View;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->f:Landroid/view/View;

    return-object v0
.end method

.method static synthetic O(Lcom/yf/smart/weloopx/android/ui/activities/z;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->d(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic P(Lcom/yf/smart/weloopx/android/ui/activities/z;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->c()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic P(Lcom/yf/smart/weloopx/android/ui/activities/z;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->d(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic Q(Lcom/yf/smart/weloopx/android/ui/activities/z;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->c()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic Q(Lcom/yf/smart/weloopx/android/ui/activities/z;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->d(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic R(Lcom/yf/smart/weloopx/android/ui/activities/z;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->Z:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic R(Lcom/yf/smart/weloopx/android/ui/activities/z;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->d(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic S(Lcom/yf/smart/weloopx/android/ui/activities/z;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->Y:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic T(Lcom/yf/smart/weloopx/android/ui/activities/z;)Lcom/yf/gattlib/m/a/b;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->U:Lcom/yf/gattlib/m/a/b;

    return-object v0
.end method

.method static synthetic U(Lcom/yf/smart/weloopx/android/ui/activities/z;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->V:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic V(Lcom/yf/smart/weloopx/android/ui/activities/z;)Lcom/yf/smart/weloopx/android/ui/activities/z$a;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->P:Lcom/yf/smart/weloopx/android/ui/activities/z$a;

    return-object v0
.end method

.method static synthetic W(Lcom/yf/smart/weloopx/android/ui/activities/z;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->aF:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic X(Lcom/yf/smart/weloopx/android/ui/activities/z;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->ah:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic Y(Lcom/yf/smart/weloopx/android/ui/activities/z;)B
    .locals 1

    .prologue
    .line 98
    iget-byte v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->af:B

    return v0
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/activities/z;Lcom/yf/gattlib/m/a/b;)Lcom/yf/gattlib/m/a/b;
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->U:Lcom/yf/gattlib/m/a/b;

    return-object p1
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/activities/z;Lcom/yf/smart/weloopx/c/v;)Lcom/yf/smart/weloopx/c/v;
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->y:Lcom/yf/smart/weloopx/c/v;

    return-object p1
.end method

.method private a(Lcom/yf/gattlib/m/a/b;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1854
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->G:Lcom/yf/smart/weloopx/b/b;

    iget-object v1, p1, Lcom/yf/gattlib/m/a/b;->a:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1855
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1856
    invoke-virtual {p1}, Lcom/yf/gattlib/m/a/b;->a()Ljava/lang/String;

    move-result-object v0

    .line 1858
    :cond_0
    return-object v0
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/activities/z;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/activities/z;I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0, p1, p2}, Lcom/yf/smart/weloopx/android/ui/activities/z;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/activities/z;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->W:Ljava/lang/String;

    return-object p1
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 638
    const v0, 0x7f0d01ee

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->aq:Lcom/yf/smart/weloopx/android/ui/activities/z$c;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 639
    const v0, 0x7f0d01ef

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->aq:Lcom/yf/smart/weloopx/android/ui/activities/z$c;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 640
    const v0, 0x7f0d01f0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->aq:Lcom/yf/smart/weloopx/android/ui/activities/z$c;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 641
    return-void
.end method

.method private a(Landroid/view/View;Z)V
    .locals 8

    .prologue
    const v7, 0x7f0200da

    const v3, 0x19874

    const/4 v6, 0x4

    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 401
    iput-boolean v5, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->N:Z

    .line 402
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->F:Lcom/yf/gattlib/client/d;

    .line 404
    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->b:Lcom/yf/gattlib/a/b;

    invoke-virtual {v1}, Lcom/yf/gattlib/a/b;->f()Lcom/yf/gattlib/f/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yf/gattlib/f/b;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 405
    invoke-virtual {v0}, Lcom/yf/gattlib/client/d;->n()[B

    move-result-object v1

    iput-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->A:[B

    .line 406
    invoke-virtual {v0}, Lcom/yf/gattlib/client/d;->o()[B

    move-result-object v1

    iput-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->B:[B

    .line 407
    invoke-virtual {v0}, Lcom/yf/gattlib/client/d;->p()[B

    move-result-object v1

    iput-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->C:[B

    .line 408
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->A:[B

    const/16 v2, 0x3e9

    invoke-direct {p0, v1, v2, v3}, Lcom/yf/smart/weloopx/android/ui/activities/z;->a([BII)V

    .line 409
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->B:[B

    const/16 v2, 0x3ea

    invoke-direct {p0, v1, v2, v3}, Lcom/yf/smart/weloopx/android/ui/activities/z;->a([BII)V

    .line 410
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->C:[B

    const/16 v2, 0x3eb

    invoke-direct {p0, v1, v2, v3}, Lcom/yf/smart/weloopx/android/ui/activities/z;->a([BII)V

    .line 415
    :cond_0
    const v1, 0x7f0d0205

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->aC:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 416
    const v1, 0x7f0d01f9

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->az:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 417
    const v1, 0x7f0d01f8

    invoke-static {p1, v1}, Lcom/yf/smart/weloopx/android/ui/widget/o;->a(Landroid/view/View;I)Lcom/yf/smart/weloopx/android/ui/widget/o;

    move-result-object v1

    .line 418
    iget-object v2, v1, Lcom/yf/smart/weloopx/android/ui/widget/o;->a:Landroid/widget/TextView;

    const v3, 0x7f0701d3

    invoke-virtual {p0, v3}, Lcom/yf/smart/weloopx/android/ui/activities/z;->d(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 419
    iget-object v2, v1, Lcom/yf/smart/weloopx/android/ui/widget/o;->h:Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;

    invoke-virtual {v0}, Lcom/yf/gattlib/client/d;->l()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;->setCheckedFromCode(Z)V

    .line 420
    iget-object v2, v1, Lcom/yf/smart/weloopx/android/ui/widget/o;->h:Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;

    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->as:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v2, v3}, Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 421
    iget-object v1, v1, Lcom/yf/smart/weloopx/android/ui/widget/o;->h:Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;

    iput-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->q:Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;

    .line 423
    const v1, 0x7f0d0202

    invoke-static {p1, v1}, Lcom/yf/smart/weloopx/android/ui/widget/o;->a(Landroid/view/View;I)Lcom/yf/smart/weloopx/android/ui/widget/o;

    move-result-object v1

    .line 424
    iget-object v2, v1, Lcom/yf/smart/weloopx/android/ui/widget/o;->a:Landroid/widget/TextView;

    const v3, 0x7f070049

    invoke-virtual {p0, v3}, Lcom/yf/smart/weloopx/android/ui/activities/z;->d(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 425
    iget-object v2, v1, Lcom/yf/smart/weloopx/android/ui/widget/o;->h:Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;

    invoke-virtual {v0}, Lcom/yf/gattlib/client/d;->h()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;->setCheckedFromCode(Z)V

    .line 426
    iget-object v2, v1, Lcom/yf/smart/weloopx/android/ui/widget/o;->h:Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;

    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->ax:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v2, v3}, Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 427
    iget-object v1, v1, Lcom/yf/smart/weloopx/android/ui/widget/o;->h:Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;

    iput-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->r:Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;

    .line 429
    const v1, 0x7f0d0201

    invoke-static {p1, v1}, Lcom/yf/smart/weloopx/android/ui/widget/o;->a(Landroid/view/View;I)Lcom/yf/smart/weloopx/android/ui/widget/o;

    move-result-object v1

    .line 430
    iget-object v2, v1, Lcom/yf/smart/weloopx/android/ui/widget/o;->a:Landroid/widget/TextView;

    const v3, 0x7f070172

    invoke-virtual {p0, v3}, Lcom/yf/smart/weloopx/android/ui/activities/z;->d(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    iget-object v2, v1, Lcom/yf/smart/weloopx/android/ui/widget/o;->h:Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;

    invoke-virtual {v0}, Lcom/yf/gattlib/client/d;->d()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;->setCheckedFromCode(Z)V

    .line 432
    iget-object v2, v1, Lcom/yf/smart/weloopx/android/ui/widget/o;->h:Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;

    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->ay:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v2, v3}, Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 433
    iget-object v1, v1, Lcom/yf/smart/weloopx/android/ui/widget/o;->h:Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;

    iput-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->s:Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;

    .line 435
    const v1, 0x7f0d01fa

    invoke-static {p1, v1}, Lcom/yf/smart/weloopx/android/ui/widget/o;->a(Landroid/view/View;I)Lcom/yf/smart/weloopx/android/ui/widget/o;

    move-result-object v1

    .line 436
    iget-object v2, v1, Lcom/yf/smart/weloopx/android/ui/widget/o;->a:Landroid/widget/TextView;

    const v3, 0x7f0702bb

    invoke-virtual {p0, v3}, Lcom/yf/smart/weloopx/android/ui/activities/z;->d(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 437
    iget-object v2, v1, Lcom/yf/smart/weloopx/android/ui/widget/o;->h:Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;

    invoke-virtual {v0}, Lcom/yf/gattlib/client/d;->e()Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;->setCheckedFromCode(Z)V

    .line 438
    iget-object v0, v1, Lcom/yf/smart/weloopx/android/ui/widget/o;->h:Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->aH:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v2}, Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 439
    iget-object v0, v1, Lcom/yf/smart/weloopx/android/ui/widget/o;->h:Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->v:Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;

    .line 441
    const v0, 0x7f0d01fd

    invoke-static {p1, v0}, Lcom/yf/smart/weloopx/android/ui/widget/o;->a(Landroid/view/View;I)Lcom/yf/smart/weloopx/android/ui/widget/o;

    move-result-object v0

    .line 442
    iget-object v1, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->a:Landroid/widget/TextView;

    const v2, 0x7f0701ed

    invoke-virtual {p0, v2}, Lcom/yf/smart/weloopx/android/ui/activities/z;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 443
    iget-object v1, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->h:Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 444
    iget-object v1, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->h:Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;

    invoke-virtual {v1, v6}, Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;->setVisibility(I)V

    .line 445
    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->h:Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->ad:Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;

    .line 446
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->ab:Landroid/view/View;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->az:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 449
    const v0, 0x7f0d01ff

    invoke-static {p1, v0}, Lcom/yf/smart/weloopx/android/ui/widget/o;->a(Landroid/view/View;I)Lcom/yf/smart/weloopx/android/ui/widget/o;

    move-result-object v0

    .line 450
    iget-object v1, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->a:Landroid/widget/TextView;

    const v2, 0x7f0701ec

    invoke-virtual {p0, v2}, Lcom/yf/smart/weloopx/android/ui/activities/z;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 451
    iget-object v1, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->h:Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 452
    iget-object v1, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->h:Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;

    invoke-virtual {v1, v6}, Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;->setVisibility(I)V

    .line 453
    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->h:Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->ae:Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;

    .line 454
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->ac:Landroid/view/View;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->az:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 457
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->aa:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 459
    const v0, 0x7f0d01f6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 460
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->aB:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 461
    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/widget/o;->a(Landroid/view/View;)Lcom/yf/smart/weloopx/android/ui/widget/o;

    move-result-object v0

    .line 462
    iget-object v1, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->a:Landroid/widget/TextView;

    const v2, 0x7f0701bc

    invoke-virtual {p0, v2}, Lcom/yf/smart/weloopx/android/ui/activities/z;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 463
    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 465
    const v0, 0x7f0d0204

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->aE:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 467
    const v0, 0x7f0d0203

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 468
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->aA:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 469
    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/widget/o;->a(Landroid/view/View;)Lcom/yf/smart/weloopx/android/ui/widget/o;

    move-result-object v1

    .line 470
    iget-object v2, v1, Lcom/yf/smart/weloopx/android/ui/widget/o;->a:Landroid/widget/TextView;

    const v3, 0x7f070105

    invoke-virtual {p0, v3}, Lcom/yf/smart/weloopx/android/ui/activities/z;->d(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 471
    iget-object v1, v1, Lcom/yf/smart/weloopx/android/ui/widget/o;->b:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 472
    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->f:Landroid/view/View;

    .line 474
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->a:Lb/a/a/a/a/a;

    if-nez v0, :cond_1

    .line 475
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->Z:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 476
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->Y:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 492
    :goto_0
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->e()V

    .line 493
    return-void

    .line 478
    :cond_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->a:Lb/a/a/a/a/a;

    invoke-virtual {v0}, Lb/a/a/a/a/a;->b()Ljava/lang/String;

    move-result-object v0

    .line 479
    const-string v1, "V 2.19"

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_2

    .line 480
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->Z:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 485
    :goto_1
    const-string v1, "V 2.16"

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_3

    .line 486
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->Y:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 482
    :cond_2
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->Z:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    .line 488
    :cond_3
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->Y:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/activities/z;I)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->e(I)V

    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/activities/z;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->c(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/activities/z;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/activities/z;Z)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 5

    .prologue
    .line 1146
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->f()Z

    move-result v3

    .line 1147
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->F:Lcom/yf/gattlib/client/d;

    invoke-virtual {v0}, Lcom/yf/gattlib/client/d;->c()B

    move-result v0

    .line 1148
    if-eqz p1, :cond_0

    .line 1149
    shr-int/lit8 v0, v0, 0x4

    shl-int/lit8 v0, v0, 0x4

    or-int/lit8 v0, v0, 0x1

    int-to-byte v2, v0

    .line 1155
    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 1156
    :goto_1
    new-instance v4, Lcom/yf/gattlib/client/b/ao;

    if-eqz v3, :cond_2

    move v1, v2

    :goto_2
    invoke-direct {v4, v1}, Lcom/yf/gattlib/client/b/ao;-><init>(B)V

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/activities/ap;

    invoke-direct {v1, p0, v3, v2, v0}, Lcom/yf/smart/weloopx/android/ui/activities/ap;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/z;ZBI)V

    invoke-virtual {v4, v1}, Lcom/yf/gattlib/client/b/ao;->b(Lcom/yf/gattlib/client/b/a/c;)Lcom/yf/gattlib/client/b/e;

    .line 1180
    return-void

    .line 1151
    :cond_0
    shr-int/lit8 v0, v0, 0x4

    shl-int/lit8 v0, v0, 0x4

    or-int/lit8 v0, v0, 0x2

    int-to-byte v2, v0

    goto :goto_0

    .line 1155
    :cond_1
    const/4 v0, 0x2

    goto :goto_1

    .line 1156
    :cond_2
    int-to-byte v1, v0

    goto :goto_2
.end method

.method private a([BII)V
    .locals 12

    .prologue
    const/16 v11, 0xff

    const/16 v2, 0xf

    const/16 v10, 0x3eb

    const/4 v9, -0x1

    const/4 v0, 0x0

    .line 1471
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->b:Lcom/yf/gattlib/a/b;

    invoke-virtual {v1}, Lcom/yf/gattlib/a/b;->f()Lcom/yf/gattlib/f/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yf/gattlib/f/b;->q()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1591
    :cond_0
    :goto_0
    return-void

    .line 1477
    :cond_1
    iget-boolean v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->O:Z

    if-eqz v1, :cond_2

    .line 1479
    if-ne p2, v10, :cond_0

    .line 1480
    new-array v1, v2, [B

    .line 1481
    invoke-static {v1, v9}, Ljava/util/Arrays;->fill([BB)V

    .line 1482
    invoke-static {}, Lcom/yf/gattlib/client/d;->a()Lcom/yf/gattlib/client/d;

    move-result-object v2

    .line 1483
    invoke-virtual {v2, v1}, Lcom/yf/gattlib/client/d;->b([B)V

    .line 1484
    invoke-virtual {v2, v1}, Lcom/yf/gattlib/client/d;->c([B)V

    .line 1485
    invoke-virtual {v2, v1}, Lcom/yf/gattlib/client/d;->d([B)V

    .line 1486
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->H:Lcom/yf/smart/weloopx/data/a;

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/data/a;->c()V

    .line 1487
    iput-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->O:Z

    goto :goto_0

    .line 1493
    :cond_2
    sget-boolean v1, Lcom/yf/smart/weloopx/android/ui/activities/z;->c:Z

    if-eqz v1, :cond_3

    .line 1495
    if-ne p2, v10, :cond_0

    .line 1496
    new-array v1, v2, [B

    .line 1497
    invoke-static {v1, v9}, Ljava/util/Arrays;->fill([BB)V

    .line 1498
    invoke-static {}, Lcom/yf/gattlib/client/d;->a()Lcom/yf/gattlib/client/d;

    move-result-object v2

    .line 1499
    sparse-switch p3, :sswitch_data_0

    .line 1510
    :goto_1
    sput-boolean v0, Lcom/yf/smart/weloopx/android/ui/activities/z;->c:Z

    goto :goto_0

    .line 1501
    :sswitch_0
    invoke-virtual {v2, v1}, Lcom/yf/gattlib/client/d;->c([B)V

    .line 1502
    invoke-virtual {v2, v1}, Lcom/yf/gattlib/client/d;->d([B)V

    .line 1503
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->H:Lcom/yf/smart/weloopx/data/a;

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/data/a;->d()V

    goto :goto_1

    .line 1506
    :sswitch_1
    invoke-virtual {v2, v1}, Lcom/yf/gattlib/client/d;->d([B)V

    .line 1507
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->H:Lcom/yf/smart/weloopx/data/a;

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/data/a;->e()V

    goto :goto_1

    .line 1517
    :cond_3
    const-string v3, ""

    .line 1521
    array-length v1, p1

    div-int/lit8 v6, v1, 0x2

    move v5, v0

    move v1, v0

    move v2, v0

    move v4, v0

    .line 1522
    :goto_2
    if-ge v5, v6, :cond_6

    .line 1523
    mul-int/lit8 v7, v5, 0x2

    aget-byte v7, p1, v7

    .line 1524
    mul-int/lit8 v8, v5, 0x2

    add-int/lit8 v8, v8, 0x1

    aget-byte v8, p1, v8

    .line 1526
    if-ne v7, v9, :cond_4

    if-eq v8, v9, :cond_5

    .line 1527
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v5, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1528
    const/4 v4, 0x1

    .line 1529
    and-int/lit16 v2, v7, 0xff

    .line 1530
    and-int/lit16 v1, v8, 0xff

    .line 1531
    if-ne v2, v11, :cond_5

    if-ne v1, v11, :cond_5

    .line 1532
    add-int/lit8 v0, v0, 0x1

    .line 1522
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1540
    :cond_6
    sget-boolean v5, Lcom/yf/smart/weloopx/android/ui/activities/z;->d:Z

    if-eqz v5, :cond_7

    if-ne p2, v10, :cond_7

    .line 1541
    iget-object v5, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->G:Lcom/yf/smart/weloopx/b/b;

    invoke-virtual {v5}, Lcom/yf/smart/weloopx/b/b;->o()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1542
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->n()V

    .line 1548
    :cond_7
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    const/4 v5, 0x7

    if-ne v0, v5, :cond_9

    .line 1549
    :cond_8
    packed-switch p2, :pswitch_data_0

    goto/16 :goto_0

    .line 1551
    :pswitch_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->H:Lcom/yf/smart/weloopx/data/a;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/a;->f()V

    goto/16 :goto_0

    .line 1555
    :pswitch_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->H:Lcom/yf/smart/weloopx/data/a;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/a;->h()V

    goto/16 :goto_0

    .line 1559
    :pswitch_2
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->H:Lcom/yf/smart/weloopx/data/a;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/a;->j()V

    goto/16 :goto_0

    .line 1567
    :cond_9
    new-instance v5, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;

    invoke-direct {v5}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;-><init>()V

    .line 1568
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->e(Ljava/lang/String;)V

    .line 1569
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->f(Ljava/lang/String;)V

    .line 1570
    if-eqz v4, :cond_a

    const-string v0, "1"

    :goto_3
    invoke-virtual {v5, v0}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->g(Ljava/lang/String;)V

    .line 1571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/yf/smart/weloopx/android/ui/activities/z;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->d(Ljava/lang/String;)V

    .line 1572
    invoke-virtual {v5, v3}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->a(Ljava/lang/String;)V

    .line 1573
    packed-switch p2, :pswitch_data_1

    goto/16 :goto_0

    .line 1575
    :pswitch_3
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->H:Lcom/yf/smart/weloopx/data/a;

    invoke-virtual {v0, v5}, Lcom/yf/smart/weloopx/data/a;->a(Lcom/yf/gattlib/db/daliy/modes/AlarmModel;)V

    .line 1576
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u95f9\u949f1 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u91cd\u590d\u5468\u671f "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 1577
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u95f9\u949f1 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u91cd\u590d\u5468\u671f "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1570
    :cond_a
    const-string v0, "0"

    goto/16 :goto_3

    .line 1580
    :pswitch_4
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->H:Lcom/yf/smart/weloopx/data/a;

    invoke-virtual {v0, v5}, Lcom/yf/smart/weloopx/data/a;->b(Lcom/yf/gattlib/db/daliy/modes/AlarmModel;)V

    .line 1581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u95f9\u949f2 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u91cd\u590d\u5468\u671f "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 1582
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u95f9\u949f2 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u91cd\u590d\u5468\u671f "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1585
    :pswitch_5
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->H:Lcom/yf/smart/weloopx/data/a;

    invoke-virtual {v0, v5}, Lcom/yf/smart/weloopx/data/a;->c(Lcom/yf/gattlib/db/daliy/modes/AlarmModel;)V

    .line 1586
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u95f9\u949f3 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u91cd\u590d\u5468\u671f "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 1587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u95f9\u949f3 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u91cd\u590d\u5468\u671f "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1499
    :sswitch_data_0
    .sparse-switch
        0x1639a -> :sswitch_1
        0x19874 -> :sswitch_0
    .end sparse-switch

    .line 1549
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1573
    :pswitch_data_1
    .packed-switch 0x3e9
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/android/ui/activities/z;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->d(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/android/ui/activities/z;I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0, p1, p2}, Lcom/yf/smart/weloopx/android/ui/activities/z;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/android/ui/activities/z;Lcom/yf/gattlib/m/a/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->a(Lcom/yf/gattlib/m/a/b;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 656
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/bw;

    invoke-direct {v0, p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/bw;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/z;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->a(Ljava/lang/Runnable;)V

    .line 673
    return-void
.end method

.method private b(Landroid/view/View;Z)V
    .locals 9

    .prologue
    const v8, 0x7f0d0208

    const v5, 0x1639a

    const/16 v7, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 530
    iput-boolean v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->N:Z

    .line 531
    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->F:Lcom/yf/gattlib/client/d;

    .line 535
    if-nez p2, :cond_0

    invoke-static {}, Lcom/yf/smart/weloopx/b/b;->a()Lcom/yf/smart/weloopx/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/b/b;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 536
    invoke-virtual {v3}, Lcom/yf/gattlib/client/d;->n()[B

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->A:[B

    .line 537
    invoke-virtual {v3}, Lcom/yf/gattlib/client/d;->o()[B

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->B:[B

    .line 538
    invoke-virtual {v3}, Lcom/yf/gattlib/client/d;->p()[B

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->C:[B

    .line 539
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->A:[B

    const/16 v4, 0x3e9

    invoke-direct {p0, v0, v4, v5}, Lcom/yf/smart/weloopx/android/ui/activities/z;->a([BII)V

    .line 540
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->B:[B

    const/16 v4, 0x3ea

    invoke-direct {p0, v0, v4, v5}, Lcom/yf/smart/weloopx/android/ui/activities/z;->a([BII)V

    .line 541
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->C:[B

    const/16 v4, 0x3eb

    invoke-direct {p0, v0, v4, v5}, Lcom/yf/smart/weloopx/android/ui/activities/z;->a([BII)V

    .line 545
    :cond_0
    const v0, 0x7f0d0205

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v4, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->aC:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 547
    const v0, 0x7f0d0202

    invoke-static {p1, v0}, Lcom/yf/smart/weloopx/android/ui/widget/o;->a(Landroid/view/View;I)Lcom/yf/smart/weloopx/android/ui/widget/o;

    move-result-object v0

    .line 548
    iget-object v4, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->a:Landroid/widget/TextView;

    const v5, 0x7f070049

    invoke-virtual {p0, v5}, Lcom/yf/smart/weloopx/android/ui/activities/z;->d(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 549
    iget-object v4, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->h:Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;

    invoke-virtual {v3}, Lcom/yf/gattlib/client/d;->h()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;->setCheckedFromCode(Z)V

    .line 550
    iget-object v4, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->h:Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;

    iget-object v5, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->ax:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v4, v5}, Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 551
    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->h:Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->r:Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;

    .line 553
    const v0, 0x7f0d020a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 554
    const v4, 0x7f0d0209

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 555
    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/widget/o;->a(Landroid/view/View;)Lcom/yf/smart/weloopx/android/ui/widget/o;

    move-result-object v5

    .line 556
    iget-object v6, v5, Lcom/yf/smart/weloopx/android/ui/widget/o;->h:Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;

    iput-object v6, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->u:Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;

    .line 558
    invoke-static {}, Lcom/yf/smart/weloopx/c/w;->d()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->f()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 559
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 560
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 561
    iget-object v0, v5, Lcom/yf/smart/weloopx/android/ui/widget/o;->a:Landroid/widget/TextView;

    const v4, 0x7f070174

    invoke-virtual {p0, v4}, Lcom/yf/smart/weloopx/android/ui/activities/z;->d(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 562
    iget-object v4, v5, Lcom/yf/smart/weloopx/android/ui/widget/o;->h:Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;

    invoke-virtual {v3}, Lcom/yf/gattlib/client/d;->c()B

    move-result v0

    shr-int/lit8 v0, v0, 0x4

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;->setCheckedFromCode(Z)V

    .line 563
    iget-object v0, v5, Lcom/yf/smart/weloopx/android/ui/widget/o;->h:Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;

    iget-object v4, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->av:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v4}, Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 569
    :goto_1
    const v0, 0x7f0d020b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 570
    iget-object v4, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->aD:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 571
    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/widget/o;->a(Landroid/view/View;)Lcom/yf/smart/weloopx/android/ui/widget/o;

    move-result-object v0

    .line 572
    iget-object v4, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->a:Landroid/widget/TextView;

    const v5, 0x7f070179

    invoke-virtual {p0, v5}, Lcom/yf/smart/weloopx/android/ui/activities/z;->d(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 573
    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->b:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 575
    const v0, 0x7f0d01f6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 576
    iget-object v4, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->aB:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 577
    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/widget/o;->a(Landroid/view/View;)Lcom/yf/smart/weloopx/android/ui/widget/o;

    move-result-object v0

    .line 578
    iget-object v4, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->a:Landroid/widget/TextView;

    const v5, 0x7f0701bc

    invoke-virtual {p0, v5}, Lcom/yf/smart/weloopx/android/ui/activities/z;->d(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 579
    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->b:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 581
    const v0, 0x7f0d0204

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v4, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->aE:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 584
    const v0, 0x7f0d0206

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 585
    const v4, 0x7f0d0207

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 586
    sget-object v5, Lcom/yf/smart/weloopx/c/v;->b:Lcom/yf/smart/weloopx/c/v;

    iget-object v6, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->y:Lcom/yf/smart/weloopx/c/v;

    if-ne v5, v6, :cond_3

    .line 587
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 588
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 589
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->at:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 590
    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/widget/o;->a(Landroid/view/View;)Lcom/yf/smart/weloopx/android/ui/widget/o;

    move-result-object v0

    .line 591
    iget-object v1, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->a:Landroid/widget/TextView;

    const v4, 0x7f07005a

    invoke-virtual {p0, v4}, Lcom/yf/smart/weloopx/android/ui/activities/z;->d(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 592
    iget-object v1, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 593
    iget-object v1, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3}, Lcom/yf/gattlib/client/d;->b()B

    move-result v5

    invoke-static {v4, v5}, Lcom/yf/smart/weloopx/c/w;->a(Landroid/content/Context;B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 594
    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->b:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->p:Landroid/widget/TextView;

    .line 596
    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 597
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 598
    const v0, 0x7f0d0201

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 599
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 600
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->au:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 601
    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/widget/o;->a(Landroid/view/View;)Lcom/yf/smart/weloopx/android/ui/widget/o;

    move-result-object v0

    .line 602
    iget-object v1, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->a:Landroid/widget/TextView;

    const v4, 0x7f070173

    invoke-virtual {p0, v4}, Lcom/yf/smart/weloopx/android/ui/activities/z;->d(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 603
    iget-object v1, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 604
    iget-object v1, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v3}, Lcom/yf/gattlib/client/d;->c()B

    move-result v3

    invoke-static {v2, v3}, Lcom/yf/smart/weloopx/c/w;->a(Landroid/content/Context;B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 605
    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->b:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->o:Landroid/widget/TextView;

    .line 633
    :goto_2
    const v0, 0x7f0d02cc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->a(Landroid/view/View;)V

    .line 634
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->f:Landroid/view/View;

    .line 635
    return-void

    :cond_1
    move v0, v2

    .line 562
    goto/16 :goto_0

    .line 565
    :cond_2
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 566
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 607
    :cond_3
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 608
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 609
    const v0, 0x7f0d0201

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 610
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 611
    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 612
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 613
    invoke-static {p1, v8}, Lcom/yf/smart/weloopx/android/ui/widget/o;->a(Landroid/view/View;I)Lcom/yf/smart/weloopx/android/ui/widget/o;

    move-result-object v0

    .line 614
    iget-object v4, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->a:Landroid/widget/TextView;

    const v5, 0x7f070172

    invoke-virtual {p0, v5}, Lcom/yf/smart/weloopx/android/ui/activities/z;->d(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 621
    iget-object v4, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->h:Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;

    iput-object v4, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->t:Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;

    .line 622
    invoke-virtual {v3}, Lcom/yf/gattlib/client/d;->c()B

    move-result v3

    .line 624
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->f()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 625
    and-int/lit8 v3, v3, 0xf

    .line 626
    iget-object v4, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->t:Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;

    if-ne v3, v1, :cond_4

    :goto_3
    invoke-virtual {v4, v1}, Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;->setCheckedFromCode(Z)V

    .line 630
    :goto_4
    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->h:Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->aw:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_2

    :cond_4
    move v1, v2

    .line 626
    goto :goto_3

    .line 628
    :cond_5
    iget-object v4, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->h:Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;

    if-ne v3, v1, :cond_6

    :goto_5
    invoke-virtual {v4, v1}, Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;->setCheckedFromCode(Z)V

    goto :goto_4

    :cond_6
    move v1, v2

    goto :goto_5
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/android/ui/activities/z;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->g()V

    return-void
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/android/ui/activities/z;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/android/ui/activities/z;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->a(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 949
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->j()V

    .line 950
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/yf/smart/weloopx/android/ui/c/az;->a(Landroid/app/FragmentManager;Ljava/lang/String;)Landroid/app/DialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->D:Landroid/app/DialogFragment;

    .line 951
    return-void
.end method

.method private b(Lcom/yf/gattlib/m/a/b;)Z
    .locals 2

    .prologue
    .line 1862
    invoke-static {}, Lcom/yf/smart/weloopx/b/b;->a()Lcom/yf/smart/weloopx/b/b;

    move-result-object v0

    iget-object v1, p1, Lcom/yf/gattlib/m/a/b;->a:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/b/b;->b(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/yf/smart/weloopx/android/ui/activities/z;)Lcom/yf/smart/weloopx/b/b;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->G:Lcom/yf/smart/weloopx/b/b;

    return-object v0
.end method

.method static synthetic c(Lcom/yf/smart/weloopx/android/ui/activities/z;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->d(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(Landroid/view/View;)V
    .locals 10

    .prologue
    .line 1741
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->G:Lcom/yf/smart/weloopx/b/b;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/b/b;->c()V

    .line 1743
    const v0, 0x7f0d01e8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 1744
    new-instance v1, Lcom/yf/smart/weloopx/android/ui/activities/z$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/yf/smart/weloopx/android/ui/activities/z$a;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/z;Lcom/yf/smart/weloopx/android/ui/activities/aa;)V

    iput-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->P:Lcom/yf/smart/weloopx/android/ui/activities/z$a;

    .line 1745
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->G:Lcom/yf/smart/weloopx/b/b;

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/b/b;->n()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 1746
    if-eqz v2, :cond_0

    .line 1747
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->G:Lcom/yf/smart/weloopx/b/b;

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/b/b;->k()Ljava/lang/String;

    move-result-object v7

    .line 1749
    invoke-direct {p0, v7}, Lcom/yf/smart/weloopx/android/ui/activities/z;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1750
    iget-object v8, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->P:Lcom/yf/smart/weloopx/android/ui/activities/z$a;

    new-instance v1, Lcom/yf/gattlib/m/a/b;

    const/16 v3, -0x3c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    new-instance v6, Lcom/yf/gattlib/b/a;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v6, v9, v7}, Lcom/yf/gattlib/b/a;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-direct/range {v1 .. v6}, Lcom/yf/gattlib/m/a/b;-><init>(Landroid/bluetooth/BluetoothDevice;IJLcom/yf/gattlib/b/a;)V

    invoke-virtual {v8, v1}, Lcom/yf/smart/weloopx/android/ui/activities/z$a;->a(Lcom/yf/gattlib/m/a/b;)Z

    .line 1755
    :cond_0
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->P:Lcom/yf/smart/weloopx/android/ui/activities/z$a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1756
    invoke-static {}, Lcom/yf/smart/weloopx/b/b;->a()Lcom/yf/smart/weloopx/b/b;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->aG:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v1, v2}, Lcom/yf/smart/weloopx/b/b;->a(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    .line 1757
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->ah:Landroid/os/Handler;

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->aF:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3a98

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1758
    new-instance v1, Lcom/yf/smart/weloopx/android/ui/activities/bl;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/android/ui/activities/bl;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/z;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1785
    return-void
.end method

.method static synthetic c(Lcom/yf/smart/weloopx/android/ui/activities/z;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic c(Lcom/yf/smart/weloopx/android/ui/activities/z;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->a(Ljava/lang/String;)V

    return-void
.end method

.method private c(Lcom/yf/gattlib/m/a/b;)Z
    .locals 1

    .prologue
    .line 1866
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->a(Lcom/yf/gattlib/m/a/b;)Ljava/lang/String;

    move-result-object v0

    .line 1867
    invoke-direct {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/yf/smart/weloopx/android/ui/activities/z;Lcom/yf/gattlib/m/a/b;)Z
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->b(Lcom/yf/gattlib/m/a/b;)Z

    move-result v0

    return v0
.end method

.method private c(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 1873
    invoke-static {p1}, Lcom/yf/smart/weloopx/c/w;->c(Ljava/lang/String;)Lcom/yf/smart/weloopx/c/v;

    move-result-object v0

    .line 1874
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1875
    invoke-static {}, Lcom/yf/smart/weloopx/d/a;->b()Lcom/yf/smart/weloopx/d/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/d/a;->a(Lcom/yf/smart/weloopx/c/v;)Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/yf/smart/weloopx/android/ui/activities/z;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->W:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/yf/smart/weloopx/android/ui/activities/z;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->d(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d(Lcom/yf/gattlib/m/a/b;)V
    .locals 1

    .prologue
    .line 1906
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/bq;

    invoke-direct {v0, p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/bq;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/z;Lcom/yf/gattlib/m/a/b;)V

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->a(Ljava/lang/Runnable;)V

    .line 1913
    return-void
.end method

.method static synthetic d(Lcom/yf/smart/weloopx/android/ui/activities/z;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic d(Lcom/yf/smart/weloopx/android/ui/activities/z;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lcom/yf/smart/weloopx/android/ui/activities/z;Lcom/yf/gattlib/m/a/b;)Z
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->c(Lcom/yf/gattlib/m/a/b;)Z

    move-result v0

    return v0
.end method

.method static synthetic e(Lcom/yf/smart/weloopx/android/ui/activities/z;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->d(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private e()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 497
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->a:Lb/a/a/a/a/a;

    invoke-virtual {v0}, Lb/a/a/a/a/a;->b()Ljava/lang/String;

    move-result-object v0

    .line 498
    const-string v1, "V 2.20"

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->ad:Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;

    invoke-virtual {v0, v2}, Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;->setVisibility(I)V

    .line 500
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->ae:Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;

    invoke-virtual {v0, v2}, Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;->setVisibility(I)V

    .line 501
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->aa:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 521
    :goto_0
    return-void

    .line 504
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->F:Lcom/yf/gattlib/client/d;

    invoke-virtual {v0}, Lcom/yf/gattlib/client/d;->f()B

    move-result v0

    .line 505
    if-ne v0, v5, :cond_1

    .line 506
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->ae:Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;

    invoke-virtual {v0, v3}, Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;->setVisibility(I)V

    .line 507
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->ad:Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;

    invoke-virtual {v0, v2}, Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;->setVisibility(I)V

    .line 508
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->aa:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 509
    iput-byte v5, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->af:B

    goto :goto_0

    .line 511
    :cond_1
    if-ne v0, v4, :cond_2

    .line 512
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->ad:Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;

    invoke-virtual {v0, v3}, Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;->setVisibility(I)V

    .line 513
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->ae:Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;

    invoke-virtual {v0, v2}, Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;->setVisibility(I)V

    .line 514
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->aa:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 515
    iput-byte v4, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->af:B

    goto :goto_0

    .line 517
    :cond_2
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->ad:Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;

    invoke-virtual {v0, v2}, Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;->setVisibility(I)V

    .line 518
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->ae:Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;

    invoke-virtual {v0, v2}, Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;->setVisibility(I)V

    .line 519
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->aa:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private e(I)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/16 v3, 0x8

    .line 755
    sparse-switch p1, :sswitch_data_0

    .line 802
    :goto_0
    return-void

    .line 757
    :sswitch_0
    invoke-static {}, Lcom/yf/smart/weloopx/b/b;->a()Lcom/yf/smart/weloopx/b/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yf/smart/weloopx/b/b;->c()V

    .line 758
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->g:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 759
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->h:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 760
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->i:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 761
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->j:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 763
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->x:Lcom/yf/smart/weloopx/android/ui/widget/DeviceTitle;

    if-eqz v2, :cond_0

    .line 764
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->x:Lcom/yf/smart/weloopx/android/ui/widget/DeviceTitle;

    invoke-virtual {v2}, Lcom/yf/smart/weloopx/android/ui/widget/DeviceTitle;->b()V

    .line 766
    :cond_0
    iput v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->al:I

    .line 767
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->Q:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 768
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->h:Landroid/view/View;

    invoke-direct {p0, v1, v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->a(Landroid/view/View;Z)V

    .line 769
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->o()V

    goto :goto_0

    .line 772
    :sswitch_1
    invoke-static {}, Lcom/yf/smart/weloopx/b/b;->a()Lcom/yf/smart/weloopx/b/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yf/smart/weloopx/b/b;->c()V

    .line 773
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->g:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 774
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->h:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 775
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->i:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 776
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->j:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 777
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->x:Lcom/yf/smart/weloopx/android/ui/widget/DeviceTitle;

    if-eqz v2, :cond_1

    .line 778
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->x:Lcom/yf/smart/weloopx/android/ui/widget/DeviceTitle;

    invoke-virtual {v2}, Lcom/yf/smart/weloopx/android/ui/widget/DeviceTitle;->b()V

    .line 780
    :cond_1
    iput v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->al:I

    .line 781
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->Q:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 782
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->i:Landroid/view/View;

    invoke-direct {p0, v1, v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->b(Landroid/view/View;Z)V

    .line 783
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->o()V

    goto :goto_0

    .line 786
    :sswitch_2
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->g:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 787
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->h:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 788
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->i:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 789
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->j:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 790
    invoke-static {}, Lcom/yf/smart/weloopx/b/b;->a()Lcom/yf/smart/weloopx/b/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yf/smart/weloopx/b/b;->i()Z

    move-result v2

    .line 791
    if-eqz v2, :cond_3

    :goto_1
    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->al:I

    .line 792
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->x:Lcom/yf/smart/weloopx/android/ui/widget/DeviceTitle;

    if-eqz v0, :cond_2

    .line 793
    if-eqz v2, :cond_4

    .line 794
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->x:Lcom/yf/smart/weloopx/android/ui/widget/DeviceTitle;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/widget/DeviceTitle;->a()V

    .line 799
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->j:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->b(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_3
    move v0, v1

    .line 791
    goto :goto_1

    .line 796
    :cond_4
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->x:Lcom/yf/smart/weloopx/android/ui/widget/DeviceTitle;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/widget/DeviceTitle;->b()V

    goto :goto_2

    .line 755
    :sswitch_data_0
    .sparse-switch
        0x7f0d01e7 -> :sswitch_2
        0x7f0d01ec -> :sswitch_0
        0x7f0d01ed -> :sswitch_1
    .end sparse-switch
.end method

.method static synthetic e(Lcom/yf/smart/weloopx/android/ui/activities/z;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->h()V

    return-void
.end method

.method static synthetic e(Lcom/yf/smart/weloopx/android/ui/activities/z;Lcom/yf/gattlib/m/a/b;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->d(Lcom/yf/gattlib/m/a/b;)V

    return-void
.end method

.method static synthetic e(Lcom/yf/smart/weloopx/android/ui/activities/z;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic e(Lcom/yf/smart/weloopx/android/ui/activities/z;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic f(Lcom/yf/smart/weloopx/android/ui/activities/z;)Lcom/yf/smart/weloopx/data/l;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->ai:Lcom/yf/smart/weloopx/data/l;

    return-object v0
.end method

.method static synthetic f(Lcom/yf/smart/weloopx/android/ui/activities/z;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->d(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lcom/yf/smart/weloopx/android/ui/activities/z;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic f(Lcom/yf/smart/weloopx/android/ui/activities/z;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->a(Ljava/lang/String;)V

    return-void
.end method

.method private f()Z
    .locals 2

    .prologue
    .line 649
    invoke-static {}, Lcom/yf/smart/weloopx/b/b;->a()Lcom/yf/smart/weloopx/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/b/b;->m()Ljava/lang/String;

    move-result-object v0

    .line 651
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "V 4.04"

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic g(Lcom/yf/smart/weloopx/android/ui/activities/z;)Lcom/yf/gattlib/client/d;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->F:Lcom/yf/gattlib/client/d;

    return-object v0
.end method

.method static synthetic g(Lcom/yf/smart/weloopx/android/ui/activities/z;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->d(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private g()V
    .locals 1

    .prologue
    .line 698
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/by;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/activities/by;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/z;)V

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->a(Ljava/lang/Runnable;)V

    .line 738
    return-void
.end method

.method static synthetic g(Lcom/yf/smart/weloopx/android/ui/activities/z;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic g(Lcom/yf/smart/weloopx/android/ui/activities/z;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic h(Lcom/yf/smart/weloopx/android/ui/activities/z;)Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->r:Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;

    return-object v0
.end method

.method static synthetic h(Lcom/yf/smart/weloopx/android/ui/activities/z;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->d(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private h()V
    .locals 1

    .prologue
    .line 742
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->ak:Lcom/yf/smart/weloopx/f/h;

    invoke-virtual {v0, p0}, Lcom/yf/smart/weloopx/f/h;->a(Lcom/yf/smart/weloopx/f/h$a;)V

    .line 744
    return-void
.end method

.method static synthetic h(Lcom/yf/smart/weloopx/android/ui/activities/z;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic h(Lcom/yf/smart/weloopx/android/ui/activities/z;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic i(Lcom/yf/smart/weloopx/android/ui/activities/z;)Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->s:Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;

    return-object v0
.end method

.method static synthetic i(Lcom/yf/smart/weloopx/android/ui/activities/z;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->d(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private i()V
    .locals 3

    .prologue
    .line 747
    invoke-static {}, Lcom/yf/smart/weloopx/b/b;->a()Lcom/yf/smart/weloopx/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/b/b;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/a/b;->f()Lcom/yf/gattlib/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/gattlib/f/b;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 749
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/yf/smart/weloopx/android/ui/activities/DfuActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 750
    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->startActivity(Landroid/content/Intent;)V

    .line 752
    :cond_0
    return-void
.end method

.method static synthetic i(Lcom/yf/smart/weloopx/android/ui/activities/z;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic i(Lcom/yf/smart/weloopx/android/ui/activities/z;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic j(Lcom/yf/smart/weloopx/android/ui/activities/z;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->p:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic j(Lcom/yf/smart/weloopx/android/ui/activities/z;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->d(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private j()V
    .locals 1

    .prologue
    .line 954
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 963
    :cond_0
    :goto_0
    return-void

    .line 958
    :cond_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->D:Landroid/app/DialogFragment;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/e;->a(Landroid/app/DialogFragment;)Z

    .line 959
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->D:Landroid/app/DialogFragment;

    if-eqz v0, :cond_0

    .line 960
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->D:Landroid/app/DialogFragment;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/e;->a(Landroid/app/DialogFragment;)Z

    .line 961
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->D:Landroid/app/DialogFragment;

    goto :goto_0
.end method

.method static synthetic j(Lcom/yf/smart/weloopx/android/ui/activities/z;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic j(Lcom/yf/smart/weloopx/android/ui/activities/z;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic k(Lcom/yf/smart/weloopx/android/ui/activities/z;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->o:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic k(Lcom/yf/smart/weloopx/android/ui/activities/z;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->d(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private k()V
    .locals 1

    .prologue
    .line 1273
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->F:Lcom/yf/gattlib/client/d;

    .line 1274
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/ba;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/activities/ba;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/z;)V

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->a(Ljava/lang/Runnable;)V

    .line 1288
    return-void
.end method

.method static synthetic k(Lcom/yf/smart/weloopx/android/ui/activities/z;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic k(Lcom/yf/smart/weloopx/android/ui/activities/z;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic l(Lcom/yf/smart/weloopx/android/ui/activities/z;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->d(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic l(Lcom/yf/smart/weloopx/android/ui/activities/z;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic l(Lcom/yf/smart/weloopx/android/ui/activities/z;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->a(Ljava/lang/String;)V

    return-void
.end method

.method private l()Z
    .locals 1

    .prologue
    .line 1349
    invoke-static {}, Lcom/yf/smart/weloopx/b/b;->a()Lcom/yf/smart/weloopx/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/b/b;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1350
    const/4 v0, 0x1

    .line 1355
    :goto_0
    return v0

    .line 1353
    :cond_0
    const v0, 0x7f0700cf

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->d(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->a(Ljava/lang/String;)V

    .line 1355
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic l(Lcom/yf/smart/weloopx/android/ui/activities/z;)Z
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->f()Z

    move-result v0

    return v0
.end method

.method private m()I
    .locals 2

    .prologue
    .line 1450
    sget-object v0, Lcom/yf/smart/weloopx/android/ui/activities/z$1;->a:[I

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->y:Lcom/yf/smart/weloopx/c/v;

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/c/v;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1459
    const v0, 0x7f0d01e7

    :goto_0
    return v0

    .line 1453
    :pswitch_0
    const v0, 0x7f0d01ed

    goto :goto_0

    .line 1457
    :pswitch_1
    const v0, 0x7f0d01ec

    goto :goto_0

    .line 1450
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic m(Lcom/yf/smart/weloopx/android/ui/activities/z;)Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->u:Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;

    return-object v0
.end method

.method static synthetic m(Lcom/yf/smart/weloopx/android/ui/activities/z;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->d(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic m(Lcom/yf/smart/weloopx/android/ui/activities/z;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic m(Lcom/yf/smart/weloopx/android/ui/activities/z;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic n(Lcom/yf/smart/weloopx/android/ui/activities/z;)Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->t:Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;

    return-object v0
.end method

.method static synthetic n(Lcom/yf/smart/weloopx/android/ui/activities/z;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->d(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private n()V
    .locals 2

    .prologue
    .line 1601
    new-instance v0, Lcom/yf/smart/weloopx/g/a;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/yf/smart/weloopx/g/a;-><init>(Landroid/content/Context;Lcom/yf/smart/weloopx/g/a$a;)V

    .line 1602
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/g/a;->a()V

    .line 1603
    return-void
.end method

.method static synthetic n(Lcom/yf/smart/weloopx/android/ui/activities/z;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic n(Lcom/yf/smart/weloopx/android/ui/activities/z;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic o(Lcom/yf/smart/weloopx/android/ui/activities/z;)Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->q:Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;

    return-object v0
.end method

.method static synthetic o(Lcom/yf/smart/weloopx/android/ui/activities/z;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->d(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private o()V
    .locals 1

    .prologue
    .line 1610
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->f:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1626
    :goto_0
    return-void

    .line 1615
    :cond_0
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->m()I

    move-result v0

    .line 1617
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1622
    :pswitch_0
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->q()V

    goto :goto_0

    .line 1619
    :pswitch_1
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->p()V

    goto :goto_0

    .line 1617
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d01ec
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic o(Lcom/yf/smart/weloopx/android/ui/activities/z;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic p(Lcom/yf/smart/weloopx/android/ui/activities/z;)Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->v:Lcom/yf/smart/weloopx/android/ui/widget/OptionToggleButton;

    return-object v0
.end method

.method static synthetic p(Lcom/yf/smart/weloopx/android/ui/activities/z;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->d(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private p()V
    .locals 1

    .prologue
    .line 1632
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/bg;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/activities/bg;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/z;)V

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->a(Ljava/lang/Runnable;)V

    .line 1668
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->z:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 1674
    :goto_0
    return-void

    .line 1672
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->z:Landroid/app/Activity;

    check-cast v0, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;

    .line 1673
    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/activities/MainActivity;->h()V

    goto :goto_0
.end method

.method static synthetic p(Lcom/yf/smart/weloopx/android/ui/activities/z;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic q(Lcom/yf/smart/weloopx/android/ui/activities/z;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->d(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private q()V
    .locals 2

    .prologue
    .line 1680
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  updateNowView()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 1681
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/bh;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/activities/bh;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/z;)V

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->a(Ljava/lang/Runnable;)V

    .line 1724
    return-void
.end method

.method static synthetic q(Lcom/yf/smart/weloopx/android/ui/activities/z;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->e()V

    return-void
.end method

.method static synthetic q(Lcom/yf/smart/weloopx/android/ui/activities/z;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic r(Lcom/yf/smart/weloopx/android/ui/activities/z;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->ao:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic r(Lcom/yf/smart/weloopx/android/ui/activities/z;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->d(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private r()V
    .locals 1

    .prologue
    .line 1728
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/bk;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/activities/bk;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/z;)V

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->a(Ljava/lang/Runnable;)V

    .line 1737
    return-void
.end method

.method static synthetic r(Lcom/yf/smart/weloopx/android/ui/activities/z;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic s(Lcom/yf/smart/weloopx/android/ui/activities/z;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->d(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic s(Lcom/yf/smart/weloopx/android/ui/activities/z;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->o()V

    return-void
.end method

.method static synthetic s(Lcom/yf/smart/weloopx/android/ui/activities/z;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->a(Ljava/lang/String;)V

    return-void
.end method

.method private s()Z
    .locals 1

    .prologue
    .line 1955
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 1956
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic t(Lcom/yf/smart/weloopx/android/ui/activities/z;)Landroid/view/View;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->Q:Landroid/view/View;

    return-object v0
.end method

.method static synthetic t(Lcom/yf/smart/weloopx/android/ui/activities/z;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->d(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic t(Lcom/yf/smart/weloopx/android/ui/activities/z;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->V:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic u(Lcom/yf/smart/weloopx/android/ui/activities/z;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->T:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic u(Lcom/yf/smart/weloopx/android/ui/activities/z;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->d(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic u(Lcom/yf/smart/weloopx/android/ui/activities/z;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic v(Lcom/yf/smart/weloopx/android/ui/activities/z;)Landroid/view/View;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->R:Landroid/view/View;

    return-object v0
.end method

.method static synthetic v(Lcom/yf/smart/weloopx/android/ui/activities/z;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->d(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic v(Lcom/yf/smart/weloopx/android/ui/activities/z;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic w(Lcom/yf/smart/weloopx/android/ui/activities/z;)Landroid/view/View;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->S:Landroid/view/View;

    return-object v0
.end method

.method static synthetic w(Lcom/yf/smart/weloopx/android/ui/activities/z;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->d(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic x(Lcom/yf/smart/weloopx/android/ui/activities/z;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->d(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic x(Lcom/yf/smart/weloopx/android/ui/activities/z;)Z
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->s()Z

    move-result v0

    return v0
.end method

.method static synthetic y(Lcom/yf/smart/weloopx/android/ui/activities/z;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->X:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic y(Lcom/yf/smart/weloopx/android/ui/activities/z;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->d(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic z(Lcom/yf/smart/weloopx/android/ui/activities/z;)I
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->m()I

    move-result v0

    return v0
.end method

.method static synthetic z(Lcom/yf/smart/weloopx/android/ui/activities/z;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/z;->d(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1594
    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1399
    invoke-static {}, Lcom/yf/smart/weloopx/b/b;->a()Lcom/yf/smart/weloopx/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/b/b;->k()Ljava/lang/String;

    move-result-object v0

    .line 1400
    invoke-static {}, Lcom/yf/smart/weloopx/b/b;->a()Lcom/yf/smart/weloopx/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yf/smart/weloopx/b/b;->h()Ljava/lang/String;

    move-result-object v1

    .line 1401
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1407
    :goto_0
    return-void

    .line 1404
    :cond_0
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yf/gattlib/a/b;->d()Landroid/app/Application;

    move-result-object v2

    const v3, 0x7f070029

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v5

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1405
    new-instance v0, Lcom/yf/smart/weloopx/g/d;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/g/d;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1, v2}, Lcom/yf/smart/weloopx/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1406
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "activation_time"

    const-string v3, "\u4e86\u89e3\u66f4\u591a"

    const-string v4, "\u77e5\u9053\u4e86"

    invoke-static/range {v0 .. v6}, Lcom/yf/smart/weloopx/android/ui/c/ah;->a(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 7

    .prologue
    const v6, 0x7f070253

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 808
    const-string v0, "activation_time"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 809
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/yf/smart/weloopx/android/ui/activities/RunningInfoDetailsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 810
    const-string v1, "URL"

    const-string v2, "http://www.weloop.cn/connect/index.html"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 811
    const-string v1, "ACTICATION_TERMS"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 812
    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->startActivity(Landroid/content/Intent;)V

    .line 936
    :cond_0
    :goto_0
    return-void

    .line 817
    :cond_1
    const-string v0, "onConnect"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    .line 818
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connect device name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->W:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/c;->a(Ljava/lang/Object;)V

    .line 819
    invoke-static {}, Lcom/yf/smart/weloopx/b/b;->a()Lcom/yf/smart/weloopx/b/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->V:Ljava/lang/String;

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->W:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/yf/smart/weloopx/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->U:Lcom/yf/gattlib/m/a/b;

    iget-object v1, v1, Lcom/yf/gattlib/m/a/b;->a:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0, v1}, Lcom/yf/smart/weloopx/android/ui/c/ak;->a(Landroid/app/Activity;Landroid/bluetooth/BluetoothDevice;)V

    .line 823
    :cond_2
    const-string v0, "openAntLost"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz p2, :cond_7

    .line 824
    invoke-virtual {p0, v6}, Lcom/yf/smart/weloopx/android/ui/activities/z;->d(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->b(Ljava/lang/String;)V

    .line 825
    new-instance v0, Lcom/yf/gattlib/client/b/am;

    invoke-direct {v0, v4}, Lcom/yf/gattlib/client/b/am;-><init>(Z)V

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/activities/bz;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/android/ui/activities/bz;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/z;)V

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/client/b/am;->b(Lcom/yf/gattlib/client/b/a/c;)Lcom/yf/gattlib/client/b/e;

    .line 850
    :goto_1
    const-string v0, "openMotionDisplayTommy2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz p2, :cond_8

    .line 851
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/yf/smart/weloopx/android/ui/activities/MoreProductActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 852
    const-string v1, "url"

    const-string v2, "http://www.weloop.cn/help/691.html"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 853
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->F:Lcom/yf/gattlib/client/d;

    const/16 v2, 0x13

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/yf/gattlib/client/d;->a(I[Ljava/lang/Object;)V

    .line 854
    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->startActivity(Landroid/content/Intent;)V

    .line 862
    :cond_3
    :goto_2
    const-string v0, "openMotionDisplay"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    if-eqz p2, :cond_9

    .line 863
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/yf/smart/weloopx/android/ui/activities/MoreProductActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 864
    const-string v1, "url"

    const-string v2, "http://www.weloop.cn/help/691.html"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 865
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->F:Lcom/yf/gattlib/client/d;

    const/16 v2, 0x12

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/yf/gattlib/client/d;->a(I[Ljava/lang/Object;)V

    .line 866
    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->startActivity(Landroid/content/Intent;)V

    .line 893
    :cond_4
    :goto_3
    const-string v0, "openVerticalScreen"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p2, :cond_5

    .line 894
    invoke-virtual {p0, v6}, Lcom/yf/smart/weloopx/android/ui/activities/z;->d(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->b(Ljava/lang/String;)V

    .line 896
    new-instance v0, Lcom/yf/gattlib/client/b/ar;

    invoke-direct {v0, v4}, Lcom/yf/gattlib/client/b/ar;-><init>(B)V

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/activities/ab;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/android/ui/activities/ab;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/z;)V

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/client/b/ar;->b(Lcom/yf/gattlib/client/b/a/c;)Lcom/yf/gattlib/client/b/e;

    .line 918
    :cond_5
    if-eqz p2, :cond_0

    .line 922
    const-string v0, "restart"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 923
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/yf/smart/weloopx/android/ui/c/ca;->a(Landroid/app/FragmentManager;Z)V

    .line 930
    :cond_6
    :goto_4
    const-string v0, "disconnect"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 931
    invoke-static {}, Lcom/yf/smart/weloopx/b/b;->a()Lcom/yf/smart/weloopx/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/b/b;->b()V

    .line 932
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->g()V

    goto/16 :goto_0

    .line 846
    :cond_7
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->F:Lcom/yf/gattlib/client/d;

    const/16 v1, 0xe

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/yf/gattlib/client/d;->a(I[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 855
    :cond_8
    const-string v0, "openMotionDisplayTommy2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p2, :cond_3

    .line 857
    invoke-virtual {p0, v6}, Lcom/yf/smart/weloopx/android/ui/activities/z;->d(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->b(Ljava/lang/String;)V

    .line 858
    invoke-direct {p0, v4}, Lcom/yf/smart/weloopx/android/ui/activities/z;->a(Z)V

    goto/16 :goto_2

    .line 867
    :cond_9
    const-string v0, "openMotionDisplay"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez p2, :cond_4

    .line 868
    invoke-virtual {p0, v6}, Lcom/yf/smart/weloopx/android/ui/activities/z;->d(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->b(Ljava/lang/String;)V

    .line 869
    new-instance v0, Lcom/yf/gattlib/client/b/an;

    invoke-direct {v0, v4}, Lcom/yf/gattlib/client/b/an;-><init>(Z)V

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/activities/cb;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/android/ui/activities/cb;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/z;)V

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/client/b/an;->b(Lcom/yf/gattlib/client/b/a/c;)Lcom/yf/gattlib/client/b/e;

    goto/16 :goto_3

    .line 924
    :cond_a
    const-string v0, "recover"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 925
    iput-boolean v4, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->O:Z

    .line 926
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/yf/smart/weloopx/android/ui/c/ca;->a(Landroid/app/FragmentManager;Z)V

    goto :goto_4
.end method

.method public a(ZB)V
    .locals 3

    .prologue
    .line 1416
    if-nez p1, :cond_0

    .line 1417
    const v0, 0x7f0701eb

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->d(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->a(Ljava/lang/String;)V

    .line 1423
    :goto_0
    return-void

    .line 1419
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->F:Lcom/yf/gattlib/client/d;

    invoke-virtual {v0, p2}, Lcom/yf/gattlib/client/d;->d(B)V

    .line 1420
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->F:Lcom/yf/gattlib/client/d;

    const/16 v1, 0x14

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/yf/gattlib/client/d;->a(I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(ZZ)V
    .locals 1

    .prologue
    .line 941
    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 942
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->r()V

    .line 946
    :cond_0
    :goto_0
    return-void

    .line 943
    :cond_1
    if-nez p1, :cond_0

    .line 944
    if-eqz p2, :cond_2

    const v0, 0x7f0701d7

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->d(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const v0, 0x7f0701ea

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->d(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public b()V
    .locals 0

    .prologue
    .line 1412
    return-void
.end method

.method public b(I)Z
    .locals 1

    .prologue
    .line 1924
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 1925
    invoke-static {}, Lcom/yf/smart/weloopx/b/b;->a()Lcom/yf/smart/weloopx/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/b/b;->i()Z

    move-result v0

    .line 1927
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->Q:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1929
    :cond_0
    invoke-static {}, Lcom/yf/smart/weloopx/b/b;->a()Lcom/yf/smart/weloopx/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/b/b;->c()V

    .line 1930
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->m()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->e(I)V

    .line 1931
    const/4 v0, 0x1

    .line 1934
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 0

    .prologue
    .line 1394
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 298
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->z:Landroid/app/Activity;

    .line 299
    invoke-super {p0, p1}, Lcom/yf/smart/weloopx/android/ui/c/g;->onAttach(Landroid/app/Activity;)V

    .line 300
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->e:Ljava/lang/String;

    const-string v1, "onAttach"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-static {}, Lcom/yf/gattlib/a/b;->a()Lcom/yf/gattlib/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->b:Lcom/yf/gattlib/a/b;

    .line 304
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/android/ui/activities/hg;

    .line 305
    invoke-interface {v0}, Lcom/yf/smart/weloopx/android/ui/activities/hg;->i()Lb/a/a/a/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->a:Lb/a/a/a/a/a;

    .line 306
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->ah:Landroid/os/Handler;

    .line 307
    new-instance v0, Lcom/yf/smart/weloopx/data/a;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yf/smart/weloopx/data/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->H:Lcom/yf/smart/weloopx/data/a;

    .line 309
    invoke-static {}, Lcom/yf/smart/weloopx/b/b;->a()Lcom/yf/smart/weloopx/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->G:Lcom/yf/smart/weloopx/b/b;

    .line 310
    new-instance v0, Lcom/yf/smart/weloopx/data/l;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yf/smart/weloopx/data/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->ai:Lcom/yf/smart/weloopx/data/l;

    .line 311
    new-instance v0, Lcom/yf/smart/weloopx/f/l;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/f/l;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->aj:Lcom/yf/smart/weloopx/f/l;

    .line 312
    new-instance v0, Lcom/yf/smart/weloopx/f/h;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/f/h;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->ak:Lcom/yf/smart/weloopx/f/h;

    .line 313
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 1360
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1389
    :goto_0
    return-void

    .line 1362
    :sswitch_0
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/b/b;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1363
    invoke-static {}, Lcom/yf/smart/weloopx/android/ui/b;->a()Lcom/yf/smart/weloopx/android/ui/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/android/ui/b;->a(Landroid/app/Activity;)V

    goto :goto_0

    .line 1366
    :cond_0
    const v0, 0x7f0d01e7

    invoke-direct {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->e(I)V

    goto :goto_0

    .line 1369
    :sswitch_1
    invoke-static {}, Lcom/yf/smart/weloopx/b/b;->a()Lcom/yf/smart/weloopx/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/b/b;->c()V

    .line 1370
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->al:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1372
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/yf/smart/weloopx/android/ui/activities/MoreProductActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1373
    const-string v1, "title"

    const v2, 0x7f0700c7

    invoke-virtual {p0, v2}, Lcom/yf/smart/weloopx/android/ui/activities/z;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1374
    const-string v1, "url"

    const-string v2, "http://www.weloop.cn/app/index.html"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1375
    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1377
    :cond_1
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->m()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->e(I)V

    .line 1378
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->ah:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->aF:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1382
    :sswitch_2
    invoke-static {}, Lcom/yf/smart/weloopx/b/b;->a()Lcom/yf/smart/weloopx/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/b/b;->c()V

    .line 1383
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/yf/smart/weloopx/android/ui/activities/MoreProductActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1384
    const-string v1, "title"

    const v2, 0x7f0701cc

    invoke-virtual {p0, v2}, Lcom/yf/smart/weloopx/android/ui/activities/z;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1385
    const-string v1, "url"

    const-string v2, "http://www.weloop.cn/help/634.html"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1386
    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1360
    :sswitch_data_0
    .sparse-switch
        0x7f0d016d -> :sswitch_2
        0x7f0d0210 -> :sswitch_1
        0x7f0d0211 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .prologue
    const v3, 0x7f0d01e6

    const/4 v6, 0x1

    const/16 v5, 0x8

    .line 329
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->e:Ljava/lang/String;

    const-string v1, "onCreateView"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030058

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 332
    const v0, 0x7f0d000a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yf/smart/weloopx/android/ui/widget/DeviceTitle;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->x:Lcom/yf/smart/weloopx/android/ui/widget/DeviceTitle;

    .line 333
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->x:Lcom/yf/smart/weloopx/android/ui/widget/DeviceTitle;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->x:Lcom/yf/smart/weloopx/android/ui/widget/DeviceTitle;

    invoke-virtual {v0, p0}, Lcom/yf/smart/weloopx/android/ui/widget/DeviceTitle;->setLeftOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->x:Lcom/yf/smart/weloopx/android/ui/widget/DeviceTitle;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/android/ui/widget/DeviceTitle;->b()V

    .line 339
    :cond_0
    const v0, 0x7f0d01df

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->T:Landroid/widget/RelativeLayout;

    .line 340
    const v0, 0x7f0d01e2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 341
    new-instance v2, Lcom/yf/smart/weloopx/android/ui/activities/bv;

    invoke-direct {v2, p0}, Lcom/yf/smart/weloopx/android/ui/activities/bv;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/z;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 349
    const v0, 0x7f0d01de

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->Q:Landroid/view/View;

    .line 350
    const v0, 0x7f0d01e5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->w:Landroid/widget/ImageView;

    .line 351
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->w:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->X:Landroid/graphics/drawable/AnimationDrawable;

    .line 352
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->Q:Landroid/view/View;

    const v2, 0x7f0d01e3

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->R:Landroid/view/View;

    .line 353
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->Q:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->S:Landroid/view/View;

    .line 355
    invoke-static {v1, v3}, Lcom/yf/smart/weloopx/android/ui/widget/o;->a(Landroid/view/View;I)Lcom/yf/smart/weloopx/android/ui/widget/o;

    move-result-object v0

    .line 356
    iget-object v2, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c000b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 357
    iget-object v2, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020072

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 358
    iget-object v2, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c011e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 359
    iget-object v2, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->b:Landroid/widget/TextView;

    const/high16 v3, 0x41880000    # 17.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 360
    iget-object v2, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->b:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 361
    iget-object v0, v0, Lcom/yf/smart/weloopx/android/ui/widget/o;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 363
    const v0, 0x7f0d01eb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 364
    const v0, 0x7f0d01f1

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->k:Landroid/widget/ImageView;

    .line 365
    const v0, 0x7f0d01f3

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->n:Landroid/widget/TextView;

    .line 366
    const v0, 0x7f0d01f2

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->m:Landroid/widget/TextView;

    .line 367
    const v0, 0x7f0d01f4

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->l:Landroid/widget/ImageView;

    .line 368
    const v0, 0x7f0d01e9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->g:Landroid/view/View;

    .line 369
    const v0, 0x7f0d01ec

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->h:Landroid/view/View;

    .line 370
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->h:Landroid/view/View;

    const v2, 0x7f0d0200

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->Y:Landroid/widget/RelativeLayout;

    .line 371
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->h:Landroid/view/View;

    const v2, 0x7f0d01f9

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->Z:Landroid/widget/RelativeLayout;

    .line 372
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->h:Landroid/view/View;

    const v2, 0x7f0d01fc

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->aa:Landroid/widget/RelativeLayout;

    .line 375
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->h:Landroid/view/View;

    const v2, 0x7f0d01fd

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->ab:Landroid/view/View;

    .line 376
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->h:Landroid/view/View;

    const v2, 0x7f0d01ff

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->ac:Landroid/view/View;

    .line 378
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->Y:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 379
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->Z:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 380
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->h:Landroid/view/View;

    invoke-direct {p0, v0, v6}, Lcom/yf/smart/weloopx/android/ui/activities/z;->a(Landroid/view/View;Z)V

    .line 381
    const v0, 0x7f0d01ed

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->i:Landroid/view/View;

    .line 382
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->i:Landroid/view/View;

    invoke-direct {p0, v0, v6}, Lcom/yf/smart/weloopx/android/ui/activities/z;->b(Landroid/view/View;Z)V

    .line 383
    const v0, 0x7f0d01e7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->j:Landroid/view/View;

    .line 385
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->m()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->e(I)V

    .line 387
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->F:Lcom/yf/gattlib/client/d;

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->an:Lcom/yf/gattlib/client/e;

    invoke-virtual {v0, v2}, Lcom/yf/gattlib/client/d;->a(Lcom/yf/gattlib/client/e;)V

    .line 388
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->G:Lcom/yf/smart/weloopx/b/b;

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->am:Lcom/yf/gattlib/d/b$a;

    invoke-virtual {v0, v2}, Lcom/yf/smart/weloopx/b/b;->a(Lcom/yf/gattlib/d/b$a;)V

    .line 389
    new-instance v0, Lcom/yf/smart/weloopx/c/s;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/c/s;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->E:Lcom/yf/smart/weloopx/c/s;

    .line 390
    invoke-static {}, Lcom/yf/gattlib/a/a;->a()Lcom/yf/gattlib/a/a;

    move-result-object v0

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->ao:Ljava/lang/String;

    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->ap:Lcom/yf/gattlib/a/f;

    invoke-virtual {v0, v2, v3}, Lcom/yf/gattlib/a/a;->a(Ljava/lang/String;Lcom/yf/gattlib/a/f;)V

    .line 391
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->e()V

    .line 392
    return-object v1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1917
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->e:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1918
    invoke-static {}, Lcom/yf/smart/weloopx/b/b;->a()Lcom/yf/smart/weloopx/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/b/b;->c()V

    .line 1919
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->ah:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->aF:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1920
    invoke-super {p0}, Lcom/yf/smart/weloopx/android/ui/c/g;->onDestroy()V

    .line 1921
    return-void
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    .line 1961
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->e:Ljava/lang/String;

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1962
    invoke-static {}, Lcom/yf/gattlib/a/a;->a()Lcom/yf/gattlib/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->ao:Ljava/lang/String;

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->ap:Lcom/yf/gattlib/a/f;

    invoke-virtual {v0, v1, v2}, Lcom/yf/gattlib/a/a;->b(Ljava/lang/String;Lcom/yf/gattlib/a/f;)V

    .line 1963
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->G:Lcom/yf/smart/weloopx/b/b;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/b/b;->c()V

    .line 1964
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->ah:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->aF:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1965
    invoke-super {p0}, Lcom/yf/smart/weloopx/android/ui/c/g;->onDestroyView()V

    .line 1966
    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->F:Lcom/yf/gattlib/client/d;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->an:Lcom/yf/gattlib/client/e;

    invoke-virtual {v0, v1}, Lcom/yf/gattlib/client/d;->b(Lcom/yf/gattlib/client/e;)V

    .line 319
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->G:Lcom/yf/smart/weloopx/b/b;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->am:Lcom/yf/gattlib/d/b$a;

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/b/b;->b(Lcom/yf/gattlib/d/b$a;)V

    .line 320
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->ah:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->aF:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 322
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->e:Ljava/lang/String;

    const-string v1, "onDetach"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    invoke-super {p0}, Lcom/yf/smart/weloopx/android/ui/c/g;->onDetach()V

    .line 324
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1939
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->e:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1940
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1941
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->w:Landroid/widget/ImageView;

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/activities/br;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/android/ui/activities/br;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/z;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 1948
    :cond_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->G:Lcom/yf/smart/weloopx/b/b;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/b/b;->c()V

    .line 1949
    invoke-super {p0}, Lcom/yf/smart/weloopx/android/ui/c/g;->onPause()V

    .line 1950
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 677
    invoke-super {p0}, Lcom/yf/smart/weloopx/android/ui/c/g;->onResume()V

    .line 678
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->Z:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 679
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->Y:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 680
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->e:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 682
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->w:Landroid/widget/ImageView;

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/activities/bx;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/android/ui/activities/bx;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/z;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 689
    :cond_0
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->g()V

    .line 690
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->e()V

    .line 692
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 1

    .prologue
    .line 280
    invoke-super {p0, p1}, Lcom/yf/smart/weloopx/android/ui/c/g;->setUserVisibleHint(Z)V

    .line 281
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->j:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    if-eqz p1, :cond_2

    .line 285
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/z;->g()V

    goto :goto_0

    .line 287
    :cond_2
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/z;->G:Lcom/yf/smart/weloopx/b/b;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/b/b;->c()V

    goto :goto_0
.end method
