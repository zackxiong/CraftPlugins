.class public Landroid/widget/YFHtcRemoteViews;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/os/Parcelable;
.implements Landroid/view/LayoutInflater$Filter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/YFHtcRemoteViews$1;,
        Landroid/widget/YFHtcRemoteViews$b;,
        Landroid/widget/YFHtcRemoteViews$TextViewDrawableColorFilterAction;,
        Landroid/widget/YFHtcRemoteViews$ViewPaddingAction;,
        Landroid/widget/YFHtcRemoteViews$TextViewSizeAction;,
        Landroid/widget/YFHtcRemoteViews$TextViewDrawableAction;,
        Landroid/widget/YFHtcRemoteViews$ViewGroupAction;,
        Landroid/widget/YFHtcRemoteViews$ReflectionAction;,
        Landroid/widget/YFHtcRemoteViews$BitmapReflectionAction;,
        Landroid/widget/YFHtcRemoteViews$a;,
        Landroid/widget/YFHtcRemoteViews$ReflectionActionWithoutParams;,
        Landroid/widget/YFHtcRemoteViews$SetDrawableParameters;,
        Landroid/widget/YFHtcRemoteViews$SetOnClickPendingIntent;,
        Landroid/widget/YFHtcRemoteViews$SetRemoteViewsAdapterIntent;,
        Landroid/widget/YFHtcRemoteViews$SetRemoteViewsAdapterList;,
        Landroid/widget/YFHtcRemoteViews$SetPendingIntentTemplate;,
        Landroid/widget/YFHtcRemoteViews$SetOnClickFillInIntent;,
        Landroid/widget/YFHtcRemoteViews$SetEmptyView;,
        Landroid/widget/YFHtcRemoteViews$Action;,
        Landroid/widget/YFHtcRemoteViews$d;,
        Landroid/widget/YFHtcRemoteViews$e;,
        Landroid/widget/YFHtcRemoteViews$c;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/widget/YFHtcRemoteViews;",
            ">;"
        }
    .end annotation
.end field

.field public static final j:Landroid/widget/YFHtcRemoteViews$d;

.field public static final k:[Ljava/lang/Object;

.field public static final l:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Landroid/widget/YFHtcRemoteViews$c",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final m:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Landroid/content/pm/ApplicationInfo;

.field public final b:I

.field public c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/YFHtcRemoteViews$Action;",
            ">;"
        }
    .end annotation
.end field

.field public d:Landroid/widget/YFHtcRemoteViews$b;

.field public e:Landroid/widget/YFHtcRemoteViews$a;

.field public f:Z

.field public g:Landroid/widget/YFHtcRemoteViews;

.field public h:Landroid/widget/YFHtcRemoteViews;

.field public i:Z

.field public final n:Landroid/widget/YFHtcRemoteViews$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/YFHtcRemoteViews$c",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 131
    new-instance v0, Landroid/widget/YFHtcRemoteViews$d;

    invoke-direct {v0}, Landroid/widget/YFHtcRemoteViews$d;-><init>()V

    sput-object v0, Landroid/widget/YFHtcRemoteViews;->j:Landroid/widget/YFHtcRemoteViews$d;

    .line 133
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Landroid/widget/YFHtcRemoteViews;->k:[Ljava/lang/Object;

    .line 134
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/widget/YFHtcRemoteViews;->l:Ljava/util/HashMap;

    .line 136
    new-instance v0, Landroid/widget/a;

    invoke-direct {v0}, Landroid/widget/a;-><init>()V

    sput-object v0, Landroid/widget/YFHtcRemoteViews;->m:Ljava/lang/ThreadLocal;

    .line 2754
    new-instance v0, Landroid/widget/b;

    invoke-direct {v0}, Landroid/widget/b;-><init>()V

    sput-object v0, Landroid/widget/YFHtcRemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 1739
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/YFHtcRemoteViews;-><init>(Landroid/os/Parcel;Landroid/widget/YFHtcRemoteViews$a;)V

    .line 1740
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Landroid/widget/YFHtcRemoteViews$a;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 1742
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-boolean v1, p0, Landroid/widget/YFHtcRemoteViews;->f:Z

    .line 119
    iput-object v4, p0, Landroid/widget/YFHtcRemoteViews;->g:Landroid/widget/YFHtcRemoteViews;

    .line 120
    iput-object v4, p0, Landroid/widget/YFHtcRemoteViews;->h:Landroid/widget/YFHtcRemoteViews;

    .line 129
    iput-boolean v2, p0, Landroid/widget/YFHtcRemoteViews;->i:Z

    .line 174
    new-instance v0, Landroid/widget/YFHtcRemoteViews$c;

    invoke-direct {v0, p0, v4, v4}, Landroid/widget/YFHtcRemoteViews$c;-><init>(Landroid/widget/YFHtcRemoteViews;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/widget/YFHtcRemoteViews;->n:Landroid/widget/YFHtcRemoteViews$c;

    .line 1743
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1746
    if-nez p2, :cond_1

    .line 1747
    new-instance v3, Landroid/widget/YFHtcRemoteViews$a;

    invoke-direct {v3, p1}, Landroid/widget/YFHtcRemoteViews$a;-><init>(Landroid/os/Parcel;)V

    iput-object v3, p0, Landroid/widget/YFHtcRemoteViews;->e:Landroid/widget/YFHtcRemoteViews$a;

    .line 1753
    :goto_0
    if-nez v0, :cond_3

    .line 1754
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iput-object v0, p0, Landroid/widget/YFHtcRemoteViews;->a:Landroid/content/pm/ApplicationInfo;

    .line 1755
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/YFHtcRemoteViews;->b:I

    .line 1756
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/widget/YFHtcRemoteViews;->i:Z

    .line 1758
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1759
    if-lez v1, :cond_4

    .line 1760
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/widget/YFHtcRemoteViews;->c:Ljava/util/ArrayList;

    move v0, v2

    .line 1761
    :goto_2
    if-ge v0, v1, :cond_4

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 1762
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1763
    packed-switch v2, :pswitch_data_0

    .line 1810
    :pswitch_0
    invoke-direct {p0, p1}, Landroid/widget/YFHtcRemoteViews;->a(Landroid/os/Parcel;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 1761
    :cond_0
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1749
    :cond_1
    invoke-virtual {p0, p2}, Landroid/widget/YFHtcRemoteViews;->a(Landroid/widget/YFHtcRemoteViews$a;)V

    .line 1750
    invoke-virtual {p0}, Landroid/widget/YFHtcRemoteViews;->a()V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 1756
    goto :goto_1

    .line 1765
    :pswitch_1
    iget-object v2, p0, Landroid/widget/YFHtcRemoteViews;->c:Ljava/util/ArrayList;

    new-instance v3, Landroid/widget/YFHtcRemoteViews$SetOnClickPendingIntent;

    invoke-direct {v3, p0, p1}, Landroid/widget/YFHtcRemoteViews$SetOnClickPendingIntent;-><init>(Landroid/widget/YFHtcRemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1768
    :pswitch_2
    iget-object v2, p0, Landroid/widget/YFHtcRemoteViews;->c:Ljava/util/ArrayList;

    new-instance v3, Landroid/widget/YFHtcRemoteViews$SetDrawableParameters;

    invoke-direct {v3, p0, p1}, Landroid/widget/YFHtcRemoteViews$SetDrawableParameters;-><init>(Landroid/widget/YFHtcRemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1771
    :pswitch_3
    iget-object v2, p0, Landroid/widget/YFHtcRemoteViews;->c:Ljava/util/ArrayList;

    new-instance v3, Landroid/widget/YFHtcRemoteViews$ReflectionAction;

    invoke-direct {v3, p0, p1}, Landroid/widget/YFHtcRemoteViews$ReflectionAction;-><init>(Landroid/widget/YFHtcRemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1774
    :pswitch_4
    iget-object v2, p0, Landroid/widget/YFHtcRemoteViews;->c:Ljava/util/ArrayList;

    new-instance v3, Landroid/widget/YFHtcRemoteViews$ViewGroupAction;

    iget-object v4, p0, Landroid/widget/YFHtcRemoteViews;->e:Landroid/widget/YFHtcRemoteViews$a;

    invoke-direct {v3, p0, p1, v4}, Landroid/widget/YFHtcRemoteViews$ViewGroupAction;-><init>(Landroid/widget/YFHtcRemoteViews;Landroid/os/Parcel;Landroid/widget/YFHtcRemoteViews$a;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1777
    :pswitch_5
    iget-object v2, p0, Landroid/widget/YFHtcRemoteViews;->c:Ljava/util/ArrayList;

    new-instance v3, Landroid/widget/YFHtcRemoteViews$ReflectionActionWithoutParams;

    invoke-direct {v3, p0, p1}, Landroid/widget/YFHtcRemoteViews$ReflectionActionWithoutParams;-><init>(Landroid/widget/YFHtcRemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1780
    :pswitch_6
    iget-object v2, p0, Landroid/widget/YFHtcRemoteViews;->c:Ljava/util/ArrayList;

    new-instance v3, Landroid/widget/YFHtcRemoteViews$SetEmptyView;

    invoke-direct {v3, p0, p1}, Landroid/widget/YFHtcRemoteViews$SetEmptyView;-><init>(Landroid/widget/YFHtcRemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1783
    :pswitch_7
    iget-object v2, p0, Landroid/widget/YFHtcRemoteViews;->c:Ljava/util/ArrayList;

    new-instance v3, Landroid/widget/YFHtcRemoteViews$SetPendingIntentTemplate;

    invoke-direct {v3, p0, p1}, Landroid/widget/YFHtcRemoteViews$SetPendingIntentTemplate;-><init>(Landroid/widget/YFHtcRemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1786
    :pswitch_8
    iget-object v2, p0, Landroid/widget/YFHtcRemoteViews;->c:Ljava/util/ArrayList;

    new-instance v3, Landroid/widget/YFHtcRemoteViews$SetOnClickFillInIntent;

    invoke-direct {v3, p0, p1}, Landroid/widget/YFHtcRemoteViews$SetOnClickFillInIntent;-><init>(Landroid/widget/YFHtcRemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1789
    :pswitch_9
    iget-object v2, p0, Landroid/widget/YFHtcRemoteViews;->c:Ljava/util/ArrayList;

    new-instance v3, Landroid/widget/YFHtcRemoteViews$SetRemoteViewsAdapterIntent;

    invoke-direct {v3, p0, p1}, Landroid/widget/YFHtcRemoteViews$SetRemoteViewsAdapterIntent;-><init>(Landroid/widget/YFHtcRemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1792
    :pswitch_a
    iget-object v2, p0, Landroid/widget/YFHtcRemoteViews;->c:Ljava/util/ArrayList;

    new-instance v3, Landroid/widget/YFHtcRemoteViews$TextViewDrawableAction;

    invoke-direct {v3, p0, p1}, Landroid/widget/YFHtcRemoteViews$TextViewDrawableAction;-><init>(Landroid/widget/YFHtcRemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1795
    :pswitch_b
    iget-object v2, p0, Landroid/widget/YFHtcRemoteViews;->c:Ljava/util/ArrayList;

    new-instance v3, Landroid/widget/YFHtcRemoteViews$TextViewSizeAction;

    invoke-direct {v3, p0, p1}, Landroid/widget/YFHtcRemoteViews$TextViewSizeAction;-><init>(Landroid/widget/YFHtcRemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1798
    :pswitch_c
    iget-object v2, p0, Landroid/widget/YFHtcRemoteViews;->c:Ljava/util/ArrayList;

    new-instance v3, Landroid/widget/YFHtcRemoteViews$ViewPaddingAction;

    invoke-direct {v3, p0, p1}, Landroid/widget/YFHtcRemoteViews$ViewPaddingAction;-><init>(Landroid/widget/YFHtcRemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1801
    :pswitch_d
    iget-object v2, p0, Landroid/widget/YFHtcRemoteViews;->c:Ljava/util/ArrayList;

    new-instance v3, Landroid/widget/YFHtcRemoteViews$BitmapReflectionAction;

    invoke-direct {v3, p0, p1}, Landroid/widget/YFHtcRemoteViews$BitmapReflectionAction;-><init>(Landroid/widget/YFHtcRemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1804
    :pswitch_e
    iget-object v2, p0, Landroid/widget/YFHtcRemoteViews;->c:Ljava/util/ArrayList;

    new-instance v3, Landroid/widget/YFHtcRemoteViews$SetRemoteViewsAdapterList;

    invoke-direct {v3, p0, p1}, Landroid/widget/YFHtcRemoteViews$SetRemoteViewsAdapterList;-><init>(Landroid/widget/YFHtcRemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1807
    :pswitch_f
    iget-object v2, p0, Landroid/widget/YFHtcRemoteViews;->c:Ljava/util/ArrayList;

    new-instance v3, Landroid/widget/YFHtcRemoteViews$TextViewDrawableColorFilterAction;

    invoke-direct {v3, p0, p1}, Landroid/widget/YFHtcRemoteViews$TextViewDrawableColorFilterAction;-><init>(Landroid/widget/YFHtcRemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1820
    :cond_3
    new-instance v0, Landroid/widget/YFHtcRemoteViews;

    iget-object v1, p0, Landroid/widget/YFHtcRemoteViews;->e:Landroid/widget/YFHtcRemoteViews$a;

    invoke-direct {v0, p1, v1}, Landroid/widget/YFHtcRemoteViews;-><init>(Landroid/os/Parcel;Landroid/widget/YFHtcRemoteViews$a;)V

    iput-object v0, p0, Landroid/widget/YFHtcRemoteViews;->g:Landroid/widget/YFHtcRemoteViews;

    .line 1821
    new-instance v0, Landroid/widget/YFHtcRemoteViews;

    iget-object v1, p0, Landroid/widget/YFHtcRemoteViews;->e:Landroid/widget/YFHtcRemoteViews$a;

    invoke-direct {v0, p1, v1}, Landroid/widget/YFHtcRemoteViews;-><init>(Landroid/os/Parcel;Landroid/widget/YFHtcRemoteViews$a;)V

    iput-object v0, p0, Landroid/widget/YFHtcRemoteViews;->h:Landroid/widget/YFHtcRemoteViews;

    .line 1822
    iget-object v0, p0, Landroid/widget/YFHtcRemoteViews;->h:Landroid/widget/YFHtcRemoteViews;

    iget-object v0, v0, Landroid/widget/YFHtcRemoteViews;->a:Landroid/content/pm/ApplicationInfo;

    iput-object v0, p0, Landroid/widget/YFHtcRemoteViews;->a:Landroid/content/pm/ApplicationInfo;

    .line 1823
    iget-object v0, p0, Landroid/widget/YFHtcRemoteViews;->h:Landroid/widget/YFHtcRemoteViews;

    invoke-virtual {v0}, Landroid/widget/YFHtcRemoteViews;->d()I

    move-result v0

    iput v0, p0, Landroid/widget/YFHtcRemoteViews;->b:I

    .line 1827
    :cond_4
    new-instance v0, Landroid/widget/YFHtcRemoteViews$b;

    invoke-direct {v0, p0}, Landroid/widget/YFHtcRemoteViews$b;-><init>(Landroid/widget/YFHtcRemoteViews;)V

    iput-object v0, p0, Landroid/widget/YFHtcRemoteViews;->d:Landroid/widget/YFHtcRemoteViews$b;

    .line 1828
    invoke-virtual {p0}, Landroid/widget/YFHtcRemoteViews;->e()V

    .line 1829
    return-void

    .line 1763
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_d
        :pswitch_b
        :pswitch_c
        :pswitch_e
        :pswitch_0
        :pswitch_f
    .end packed-switch
.end method

.method private a(Landroid/os/Parcel;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 1833
    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    .line 1834
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v1, :cond_1

    .line 1835
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    .line 1836
    if-lt v3, v0, :cond_0

    const/16 v4, 0x11

    if-gt v3, v4, :cond_0

    .line 1840
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_0

    .line 1841
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1845
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 1318
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/YFHtcRemoteViews;->f:Z

    .line 1319
    return-void
.end method

.method public a(Landroid/widget/YFHtcRemoteViews$a;)V
    .locals 3

    .prologue
    .line 1922
    iput-object p1, p0, Landroid/widget/YFHtcRemoteViews;->e:Landroid/widget/YFHtcRemoteViews$a;

    .line 1923
    invoke-virtual {p0}, Landroid/widget/YFHtcRemoteViews;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1924
    iget-object v0, p0, Landroid/widget/YFHtcRemoteViews;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1925
    iget-object v0, p0, Landroid/widget/YFHtcRemoteViews;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1926
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 1927
    iget-object v0, p0, Landroid/widget/YFHtcRemoteViews;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/YFHtcRemoteViews$Action;

    invoke-virtual {v0, p1}, Landroid/widget/YFHtcRemoteViews$Action;->a(Landroid/widget/YFHtcRemoteViews$a;)V

    .line 1926
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1931
    :cond_0
    iget-object v0, p0, Landroid/widget/YFHtcRemoteViews;->g:Landroid/widget/YFHtcRemoteViews;

    invoke-virtual {v0, p1}, Landroid/widget/YFHtcRemoteViews;->a(Landroid/widget/YFHtcRemoteViews$a;)V

    .line 1932
    iget-object v0, p0, Landroid/widget/YFHtcRemoteViews;->h:Landroid/widget/YFHtcRemoteViews;

    invoke-virtual {v0, p1}, Landroid/widget/YFHtcRemoteViews;->a(Landroid/widget/YFHtcRemoteViews$a;)V

    .line 1934
    :cond_1
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 1699
    iget-object v0, p0, Landroid/widget/YFHtcRemoteViews;->g:Landroid/widget/YFHtcRemoteViews;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/YFHtcRemoteViews;->h:Landroid/widget/YFHtcRemoteViews;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Landroid/widget/YFHtcRemoteViews;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1860
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1861
    invoke-virtual {p0, v0, v1}, Landroid/widget/YFHtcRemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1862
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1863
    new-instance v1, Landroid/widget/YFHtcRemoteViews;

    invoke-direct {v1, v0}, Landroid/widget/YFHtcRemoteViews;-><init>(Landroid/os/Parcel;)V

    .line 1864
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1865
    return-object v1
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0}, Landroid/widget/YFHtcRemoteViews;->c()Landroid/widget/YFHtcRemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 1880
    iget v0, p0, Landroid/widget/YFHtcRemoteViews;->b:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 2687
    const/4 v0, 0x0

    return v0
.end method

.method public e()V
    .locals 4

    .prologue
    .line 1898
    iget-object v0, p0, Landroid/widget/YFHtcRemoteViews;->d:Landroid/widget/YFHtcRemoteViews$b;

    invoke-virtual {v0}, Landroid/widget/YFHtcRemoteViews$b;->a()V

    .line 1900
    invoke-virtual {p0}, Landroid/widget/YFHtcRemoteViews;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1902
    iget-object v0, p0, Landroid/widget/YFHtcRemoteViews;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1903
    iget-object v0, p0, Landroid/widget/YFHtcRemoteViews;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1904
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 1905
    iget-object v0, p0, Landroid/widget/YFHtcRemoteViews;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/YFHtcRemoteViews$Action;

    iget-object v3, p0, Landroid/widget/YFHtcRemoteViews;->d:Landroid/widget/YFHtcRemoteViews$b;

    invoke-virtual {v0, v3}, Landroid/widget/YFHtcRemoteViews$Action;->a(Landroid/widget/YFHtcRemoteViews$b;)V

    .line 1904
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1908
    :cond_0
    iget-boolean v0, p0, Landroid/widget/YFHtcRemoteViews;->f:Z

    if-eqz v0, :cond_1

    .line 1909
    iget-object v0, p0, Landroid/widget/YFHtcRemoteViews;->e:Landroid/widget/YFHtcRemoteViews$a;

    iget-object v1, p0, Landroid/widget/YFHtcRemoteViews;->d:Landroid/widget/YFHtcRemoteViews$b;

    invoke-virtual {v0, v1}, Landroid/widget/YFHtcRemoteViews$a;->a(Landroid/widget/YFHtcRemoteViews$b;)V

    .line 1916
    :cond_1
    :goto_1
    return-void

    .line 1912
    :cond_2
    iget-object v0, p0, Landroid/widget/YFHtcRemoteViews;->d:Landroid/widget/YFHtcRemoteViews$b;

    iget-object v1, p0, Landroid/widget/YFHtcRemoteViews;->g:Landroid/widget/YFHtcRemoteViews;

    invoke-virtual {v1}, Landroid/widget/YFHtcRemoteViews;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/YFHtcRemoteViews$b;->a(I)V

    .line 1913
    iget-object v0, p0, Landroid/widget/YFHtcRemoteViews;->d:Landroid/widget/YFHtcRemoteViews$b;

    iget-object v1, p0, Landroid/widget/YFHtcRemoteViews;->h:Landroid/widget/YFHtcRemoteViews;

    invoke-virtual {v1}, Landroid/widget/YFHtcRemoteViews;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/YFHtcRemoteViews$b;->a(I)V

    .line 1914
    iget-object v0, p0, Landroid/widget/YFHtcRemoteViews;->e:Landroid/widget/YFHtcRemoteViews$a;

    iget-object v1, p0, Landroid/widget/YFHtcRemoteViews;->d:Landroid/widget/YFHtcRemoteViews$b;

    invoke-virtual {v0, v1}, Landroid/widget/YFHtcRemoteViews$a;->a(Landroid/widget/YFHtcRemoteViews$b;)V

    goto :goto_1
.end method

.method public f()I
    .locals 1

    .prologue
    .line 1941
    iget-object v0, p0, Landroid/widget/YFHtcRemoteViews;->d:Landroid/widget/YFHtcRemoteViews$b;

    invoke-virtual {v0}, Landroid/widget/YFHtcRemoteViews$b;->b()I

    move-result v0

    return v0
.end method

.method public onLoadClass(Ljava/lang/Class;)Z
    .locals 1

    .prologue
    .line 2683
    const-class v0, Landroid/widget/YFHtcRemoteViews$e;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2691
    invoke-virtual {p0}, Landroid/widget/YFHtcRemoteViews;->b()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2692
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2695
    iget-boolean v2, p0, Landroid/widget/YFHtcRemoteViews;->f:Z

    if-eqz v2, :cond_0

    .line 2696
    iget-object v2, p0, Landroid/widget/YFHtcRemoteViews;->e:Landroid/widget/YFHtcRemoteViews$a;

    invoke-virtual {v2, p1, p2}, Landroid/widget/YFHtcRemoteViews$a;->a(Landroid/os/Parcel;I)V

    .line 2698
    :cond_0
    iget-object v2, p0, Landroid/widget/YFHtcRemoteViews;->a:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2699
    iget v2, p0, Landroid/widget/YFHtcRemoteViews;->b:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2700
    iget-boolean v2, p0, Landroid/widget/YFHtcRemoteViews;->i:Z

    if-eqz v2, :cond_1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2702
    iget-object v0, p0, Landroid/widget/YFHtcRemoteViews;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 2703
    iget-object v0, p0, Landroid/widget/YFHtcRemoteViews;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v0

    .line 2707
    :goto_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v1

    .line 2708
    :goto_2
    if-ge v3, v2, :cond_5

    .line 2709
    iget-object v0, p0, Landroid/widget/YFHtcRemoteViews;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/YFHtcRemoteViews$Action;

    .line 2710
    invoke-virtual {v0, p1, v1}, Landroid/widget/YFHtcRemoteViews$Action;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2708
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_1
    move v0, v1

    .line 2700
    goto :goto_0

    :cond_2
    move v2, v1

    .line 2705
    goto :goto_1

    .line 2713
    :cond_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2716
    iget-boolean v0, p0, Landroid/widget/YFHtcRemoteViews;->f:Z

    if-eqz v0, :cond_4

    .line 2717
    iget-object v0, p0, Landroid/widget/YFHtcRemoteViews;->e:Landroid/widget/YFHtcRemoteViews$a;

    invoke-virtual {v0, p1, p2}, Landroid/widget/YFHtcRemoteViews$a;->a(Landroid/os/Parcel;I)V

    .line 2719
    :cond_4
    iget-object v0, p0, Landroid/widget/YFHtcRemoteViews;->g:Landroid/widget/YFHtcRemoteViews;

    invoke-virtual {v0, p1, p2}, Landroid/widget/YFHtcRemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2720
    iget-object v0, p0, Landroid/widget/YFHtcRemoteViews;->h:Landroid/widget/YFHtcRemoteViews;

    invoke-virtual {v0, p1, p2}, Landroid/widget/YFHtcRemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2722
    :cond_5
    return-void
.end method
