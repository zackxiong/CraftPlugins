.class public final Lcom/yf/ui/R$styleable;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/ui/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final CompletedView:[I

.field public static final CompletedView_circleColor:I = 0x2

.field public static final CompletedView_radius:I = 0x0

.field public static final CompletedView_ringColor:I = 0x3

.field public static final CompletedView_strokeWidth:I = 0x1

.field public static final ProcessButton:[I

.field public static final ProcessButton_pb_completeDrawable:I = 0x4

.field public static final ProcessButton_pb_errorDrawable:I = 0x5

.field public static final ProcessButton_pb_progressDrawable:I = 0x3

.field public static final ProcessButton_pb_textComplete:I = 0x1

.field public static final ProcessButton_pb_textError:I = 0x2

.field public static final ProcessButton_pb_textProgress:I = 0x0

.field public static final ProgressWheel2:[I

.field public static final ProgressWheel2_pw_barColor:I = 0x3

.field public static final ProgressWheel2_pw_barLength:I = 0xb

.field public static final ProgressWheel2_pw_barWidth:I = 0xa

.field public static final ProgressWheel2_pw_circleColor:I = 0x8

.field public static final ProgressWheel2_pw_contourColor:I = 0xc

.field public static final ProgressWheel2_pw_contourSize:I = 0xd

.field public static final ProgressWheel2_pw_delayMillis:I = 0x7

.field public static final ProgressWheel2_pw_radius:I = 0x9

.field public static final ProgressWheel2_pw_rimColor:I = 0x4

.field public static final ProgressWheel2_pw_rimWidth:I = 0x5

.field public static final ProgressWheel2_pw_spinSpeed:I = 0x6

.field public static final ProgressWheel2_pw_text:I = 0x0

.field public static final ProgressWheel2_pw_textColor:I = 0x1

.field public static final ProgressWheel2_pw_textSize:I = 0x2

.field public static final PullToRefresh:[I

.field public static final PullToRefresh_ptrAdapterViewBackground:I = 0x10

.field public static final PullToRefresh_ptrAnimationStyle:I = 0xc

.field public static final PullToRefresh_ptrDrawable:I = 0x6

.field public static final PullToRefresh_ptrDrawableBottom:I = 0x12

.field public static final PullToRefresh_ptrDrawableEnd:I = 0x8

.field public static final PullToRefresh_ptrDrawableStart:I = 0x7

.field public static final PullToRefresh_ptrDrawableTop:I = 0x11

.field public static final PullToRefresh_ptrHeaderBackground:I = 0x1

.field public static final PullToRefresh_ptrHeaderSubTextColor:I = 0x3

.field public static final PullToRefresh_ptrHeaderTextAppearance:I = 0xa

.field public static final PullToRefresh_ptrHeaderTextColor:I = 0x2

.field public static final PullToRefresh_ptrListViewExtrasEnabled:I = 0xe

.field public static final PullToRefresh_ptrMode:I = 0x4

.field public static final PullToRefresh_ptrOverScroll:I = 0x9

.field public static final PullToRefresh_ptrRefreshableViewBackground:I = 0x0

.field public static final PullToRefresh_ptrRotateDrawableWhilePulling:I = 0xf

.field public static final PullToRefresh_ptrScrollingWhileRefreshingEnabled:I = 0xd

.field public static final PullToRefresh_ptrShowIndicator:I = 0x5

.field public static final PullToRefresh_ptrSubHeaderTextAppearance:I = 0xb

.field public static final SlidingMenu:[I

.field public static final SlidingMenu_behindOffset:I = 0x3

.field public static final SlidingMenu_behindScrollScale:I = 0x5

.field public static final SlidingMenu_behindWidth:I = 0x4

.field public static final SlidingMenu_fadeDegree:I = 0xb

.field public static final SlidingMenu_fadeEnabled:I = 0xa

.field public static final SlidingMenu_mode:I = 0x0

.field public static final SlidingMenu_selectorDrawable:I = 0xd

.field public static final SlidingMenu_selectorEnabled:I = 0xc

.field public static final SlidingMenu_shadowDrawable:I = 0x8

.field public static final SlidingMenu_shadowWidth:I = 0x9

.field public static final SlidingMenu_touchModeAbove:I = 0x6

.field public static final SlidingMenu_touchModeBehind:I = 0x7

.field public static final SlidingMenu_viewAbove:I = 0x1

.field public static final SlidingMenu_viewBehind:I = 0x2

.field public static final WheelView:[I

.field public static final WheelView_centerTextColor:I = 0xa

.field public static final WheelView_otherTextColor:I = 0xb


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xe

    .line 153
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/yf/ui/R$styleable;->CompletedView:[I

    .line 158
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/yf/ui/R$styleable;->ProcessButton:[I

    .line 165
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/yf/ui/R$styleable;->ProgressWheel2:[I

    .line 180
    const/16 v0, 0x13

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/yf/ui/R$styleable;->PullToRefresh:[I

    .line 200
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/yf/ui/R$styleable;->SlidingMenu:[I

    .line 215
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/yf/ui/R$styleable;->WheelView:[I

    return-void

    .line 153
    nop

    :array_0
    .array-data 4
        0x7f010059
        0x7f01005a
        0x7f01005b
        0x7f01005c
    .end array-data

    .line 158
    :array_1
    .array-data 4
        0x7f0100b8
        0x7f0100b9
        0x7f0100ba
        0x7f0100bb
        0x7f0100bc
        0x7f0100bd
    .end array-data

    .line 165
    :array_2
    .array-data 4
        0x7f0100be
        0x7f0100bf
        0x7f0100c0
        0x7f0100c1
        0x7f0100c2
        0x7f0100c3
        0x7f0100c4
        0x7f0100c5
        0x7f0100c6
        0x7f0100c7
        0x7f0100c8
        0x7f0100c9
        0x7f0100ca
        0x7f0100cb
    .end array-data

    .line 180
    :array_3
    .array-data 4
        0x7f0100cc
        0x7f0100cd
        0x7f0100ce
        0x7f0100cf
        0x7f0100d0
        0x7f0100d1
        0x7f0100d2
        0x7f0100d3
        0x7f0100d4
        0x7f0100d5
        0x7f0100d6
        0x7f0100d7
        0x7f0100d8
        0x7f0100d9
        0x7f0100da
        0x7f0100db
        0x7f0100dc
        0x7f0100dd
        0x7f0100de
    .end array-data

    .line 200
    :array_4
    .array-data 4
        0x7f01010f
        0x7f010110
        0x7f010111
        0x7f010112
        0x7f010113
        0x7f010114
        0x7f010115
        0x7f010116
        0x7f010117
        0x7f010118
        0x7f010119
        0x7f01011a
        0x7f01011b
        0x7f01011c
    .end array-data

    .line 215
    :array_5
    .array-data 4
        0x7f010008
        0x7f010009
        0x7f01000a
        0x7f01000b
        0x7f01000c
        0x7f01000d
        0x7f01000e
        0x7f01000f
        0x7f010010
        0x7f010011
        0x7f0101dc
        0x7f0101dd
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
