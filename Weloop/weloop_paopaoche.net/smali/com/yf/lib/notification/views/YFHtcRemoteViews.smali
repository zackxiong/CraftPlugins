.class public Lcom/yf/lib/notification/views/YFHtcRemoteViews;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/os/Parcelable;
.implements Landroid/view/LayoutInflater$Filter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/lib/notification/views/YFHtcRemoteViews$1;,
        Lcom/yf/lib/notification/views/YFHtcRemoteViews$b;,
        Lcom/yf/lib/notification/views/YFHtcRemoteViews$TextViewDrawableColorFilterAction;,
        Lcom/yf/lib/notification/views/YFHtcRemoteViews$ViewPaddingAction;,
        Lcom/yf/lib/notification/views/YFHtcRemoteViews$TextViewSizeAction;,
        Lcom/yf/lib/notification/views/YFHtcRemoteViews$TextViewDrawableAction;,
        Lcom/yf/lib/notification/views/YFHtcRemoteViews$ViewGroupAction;,
        Lcom/yf/lib/notification/views/YFHtcRemoteViews$ReflectionAction;,
        Lcom/yf/lib/notification/views/YFHtcRemoteViews$BitmapReflectionAction;,
        Lcom/yf/lib/notification/views/YFHtcRemoteViews$a;,
        Lcom/yf/lib/notification/views/YFHtcRemoteViews$ReflectionActionWithoutParams;,
        Lcom/yf/lib/notification/views/YFHtcRemoteViews$SetDrawableParameters;,
        Lcom/yf/lib/notification/views/YFHtcRemoteViews$SetOnClickPendingIntent;,
        Lcom/yf/lib/notification/views/YFHtcRemoteViews$SetRemoteViewsAdapterIntent;,
        Lcom/yf/lib/notification/views/YFHtcRemoteViews$SetRemoteViewsAdapterList;,
        Lcom/yf/lib/notification/views/YFHtcRemoteViews$SetPendingIntentTemplate;,
        Lcom/yf/lib/notification/views/YFHtcRemoteViews$SetOnClickFillInIntent;,
        Lcom/yf/lib/notification/views/YFHtcRemoteViews$SetEmptyView;,
        Lcom/yf/lib/notification/views/YFHtcRemoteViews$Action;,
        Lcom/yf/lib/notification/views/YFHtcRemoteViews$d;,
        Lcom/yf/lib/notification/views/YFHtcRemoteViews$e;,
        Lcom/yf/lib/notification/views/YFHtcRemoteViews$c;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yf/lib/notification/views/YFHtcRemoteViews;",
            ">;"
        }
    .end annotation
.end field

.field public static final j:Lcom/yf/lib/notification/views/YFHtcRemoteViews$d;

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
            "Lcom/yf/lib/notification/views/YFHtcRemoteViews$c",
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
            "Lcom/yf/lib/notification/views/YFHtcRemoteViews$Action;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lcom/yf/lib/notification/views/YFHtcRemoteViews$b;

.field public e:Lcom/yf/lib/notification/views/YFHtcRemoteViews$a;

.field public f:Z

.field public g:Lcom/yf/lib/notification/views/YFHtcRemoteViews;

.field public h:Lcom/yf/lib/notification/views/YFHtcRemoteViews;

.field public i:Z

.field public final n:Lcom/yf/lib/notification/views/YFHtcRemoteViews$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yf/lib/notification/views/YFHtcRemoteViews$c",
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
    .line 143
    new-instance v0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$d;

    invoke-direct {v0}, Lcom/yf/lib/notification/views/YFHtcRemoteViews$d;-><init>()V

    sput-object v0, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->j:Lcom/yf/lib/notification/views/YFHtcRemoteViews$d;

    .line 145
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->k:[Ljava/lang/Object;

    .line 146
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->l:Ljava/util/HashMap;

    .line 148
    new-instance v0, Lcom/yf/lib/notification/views/a;

    invoke-direct {v0}, Lcom/yf/lib/notification/views/a;-><init>()V

    sput-object v0, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->m:Ljava/lang/ThreadLocal;

    .line 2766
    new-instance v0, Lcom/yf/lib/notification/views/b;

    invoke-direct {v0}, Lcom/yf/lib/notification/views/b;-><init>()V

    sput-object v0, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 1751
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yf/lib/notification/views/YFHtcRemoteViews;-><init>(Landroid/os/Parcel;Lcom/yf/lib/notification/views/YFHtcRemoteViews$a;)V

    .line 1752
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Lcom/yf/lib/notification/views/YFHtcRemoteViews$a;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 1754
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-boolean v1, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->f:Z

    .line 131
    iput-object v4, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->g:Lcom/yf/lib/notification/views/YFHtcRemoteViews;

    .line 132
    iput-object v4, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->h:Lcom/yf/lib/notification/views/YFHtcRemoteViews;

    .line 141
    iput-boolean v2, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->i:Z

    .line 186
    new-instance v0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$c;

    invoke-direct {v0, p0, v4, v4}, Lcom/yf/lib/notification/views/YFHtcRemoteViews$c;-><init>(Lcom/yf/lib/notification/views/YFHtcRemoteViews;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->n:Lcom/yf/lib/notification/views/YFHtcRemoteViews$c;

    .line 1755
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1758
    if-nez p2, :cond_1

    .line 1759
    new-instance v3, Lcom/yf/lib/notification/views/YFHtcRemoteViews$a;

    invoke-direct {v3, p1}, Lcom/yf/lib/notification/views/YFHtcRemoteViews$a;-><init>(Landroid/os/Parcel;)V

    iput-object v3, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->e:Lcom/yf/lib/notification/views/YFHtcRemoteViews$a;

    .line 1765
    :goto_0
    if-nez v0, :cond_3

    .line 1766
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iput-object v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->a:Landroid/content/pm/ApplicationInfo;

    .line 1767
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->b:I

    .line 1768
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->i:Z

    .line 1770
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1771
    if-lez v1, :cond_4

    .line 1772
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->c:Ljava/util/ArrayList;

    move v0, v2

    .line 1773
    :goto_2
    if-ge v0, v1, :cond_4

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 1774
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1775
    packed-switch v2, :pswitch_data_0

    .line 1822
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->a(Landroid/os/Parcel;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 1773
    :cond_0
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1761
    :cond_1
    invoke-virtual {p0, p2}, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->a(Lcom/yf/lib/notification/views/YFHtcRemoteViews$a;)V

    .line 1762
    invoke-virtual {p0}, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->a()V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 1768
    goto :goto_1

    .line 1777
    :pswitch_1
    iget-object v2, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->c:Ljava/util/ArrayList;

    new-instance v3, Lcom/yf/lib/notification/views/YFHtcRemoteViews$SetOnClickPendingIntent;

    invoke-direct {v3, p0, p1}, Lcom/yf/lib/notification/views/YFHtcRemoteViews$SetOnClickPendingIntent;-><init>(Lcom/yf/lib/notification/views/YFHtcRemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1780
    :pswitch_2
    iget-object v2, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->c:Ljava/util/ArrayList;

    new-instance v3, Lcom/yf/lib/notification/views/YFHtcRemoteViews$SetDrawableParameters;

    invoke-direct {v3, p0, p1}, Lcom/yf/lib/notification/views/YFHtcRemoteViews$SetDrawableParameters;-><init>(Lcom/yf/lib/notification/views/YFHtcRemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1783
    :pswitch_3
    iget-object v2, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->c:Ljava/util/ArrayList;

    new-instance v3, Lcom/yf/lib/notification/views/YFHtcRemoteViews$ReflectionAction;

    invoke-direct {v3, p0, p1}, Lcom/yf/lib/notification/views/YFHtcRemoteViews$ReflectionAction;-><init>(Lcom/yf/lib/notification/views/YFHtcRemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1786
    :pswitch_4
    iget-object v2, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->c:Ljava/util/ArrayList;

    new-instance v3, Lcom/yf/lib/notification/views/YFHtcRemoteViews$ViewGroupAction;

    iget-object v4, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->e:Lcom/yf/lib/notification/views/YFHtcRemoteViews$a;

    invoke-direct {v3, p0, p1, v4}, Lcom/yf/lib/notification/views/YFHtcRemoteViews$ViewGroupAction;-><init>(Lcom/yf/lib/notification/views/YFHtcRemoteViews;Landroid/os/Parcel;Lcom/yf/lib/notification/views/YFHtcRemoteViews$a;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1789
    :pswitch_5
    iget-object v2, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->c:Ljava/util/ArrayList;

    new-instance v3, Lcom/yf/lib/notification/views/YFHtcRemoteViews$ReflectionActionWithoutParams;

    invoke-direct {v3, p0, p1}, Lcom/yf/lib/notification/views/YFHtcRemoteViews$ReflectionActionWithoutParams;-><init>(Lcom/yf/lib/notification/views/YFHtcRemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1792
    :pswitch_6
    iget-object v2, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->c:Ljava/util/ArrayList;

    new-instance v3, Lcom/yf/lib/notification/views/YFHtcRemoteViews$SetEmptyView;

    invoke-direct {v3, p0, p1}, Lcom/yf/lib/notification/views/YFHtcRemoteViews$SetEmptyView;-><init>(Lcom/yf/lib/notification/views/YFHtcRemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1795
    :pswitch_7
    iget-object v2, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->c:Ljava/util/ArrayList;

    new-instance v3, Lcom/yf/lib/notification/views/YFHtcRemoteViews$SetPendingIntentTemplate;

    invoke-direct {v3, p0, p1}, Lcom/yf/lib/notification/views/YFHtcRemoteViews$SetPendingIntentTemplate;-><init>(Lcom/yf/lib/notification/views/YFHtcRemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1798
    :pswitch_8
    iget-object v2, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->c:Ljava/util/ArrayList;

    new-instance v3, Lcom/yf/lib/notification/views/YFHtcRemoteViews$SetOnClickFillInIntent;

    invoke-direct {v3, p0, p1}, Lcom/yf/lib/notification/views/YFHtcRemoteViews$SetOnClickFillInIntent;-><init>(Lcom/yf/lib/notification/views/YFHtcRemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1801
    :pswitch_9
    iget-object v2, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->c:Ljava/util/ArrayList;

    new-instance v3, Lcom/yf/lib/notification/views/YFHtcRemoteViews$SetRemoteViewsAdapterIntent;

    invoke-direct {v3, p0, p1}, Lcom/yf/lib/notification/views/YFHtcRemoteViews$SetRemoteViewsAdapterIntent;-><init>(Lcom/yf/lib/notification/views/YFHtcRemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1804
    :pswitch_a
    iget-object v2, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->c:Ljava/util/ArrayList;

    new-instance v3, Lcom/yf/lib/notification/views/YFHtcRemoteViews$TextViewDrawableAction;

    invoke-direct {v3, p0, p1}, Lcom/yf/lib/notification/views/YFHtcRemoteViews$TextViewDrawableAction;-><init>(Lcom/yf/lib/notification/views/YFHtcRemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1807
    :pswitch_b
    iget-object v2, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->c:Ljava/util/ArrayList;

    new-instance v3, Lcom/yf/lib/notification/views/YFHtcRemoteViews$TextViewSizeAction;

    invoke-direct {v3, p0, p1}, Lcom/yf/lib/notification/views/YFHtcRemoteViews$TextViewSizeAction;-><init>(Lcom/yf/lib/notification/views/YFHtcRemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1810
    :pswitch_c
    iget-object v2, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->c:Ljava/util/ArrayList;

    new-instance v3, Lcom/yf/lib/notification/views/YFHtcRemoteViews$ViewPaddingAction;

    invoke-direct {v3, p0, p1}, Lcom/yf/lib/notification/views/YFHtcRemoteViews$ViewPaddingAction;-><init>(Lcom/yf/lib/notification/views/YFHtcRemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1813
    :pswitch_d
    iget-object v2, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->c:Ljava/util/ArrayList;

    new-instance v3, Lcom/yf/lib/notification/views/YFHtcRemoteViews$BitmapReflectionAction;

    invoke-direct {v3, p0, p1}, Lcom/yf/lib/notification/views/YFHtcRemoteViews$BitmapReflectionAction;-><init>(Lcom/yf/lib/notification/views/YFHtcRemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1816
    :pswitch_e
    iget-object v2, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->c:Ljava/util/ArrayList;

    new-instance v3, Lcom/yf/lib/notification/views/YFHtcRemoteViews$SetRemoteViewsAdapterList;

    invoke-direct {v3, p0, p1}, Lcom/yf/lib/notification/views/YFHtcRemoteViews$SetRemoteViewsAdapterList;-><init>(Lcom/yf/lib/notification/views/YFHtcRemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1819
    :pswitch_f
    iget-object v2, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->c:Ljava/util/ArrayList;

    new-instance v3, Lcom/yf/lib/notification/views/YFHtcRemoteViews$TextViewDrawableColorFilterAction;

    invoke-direct {v3, p0, p1}, Lcom/yf/lib/notification/views/YFHtcRemoteViews$TextViewDrawableColorFilterAction;-><init>(Lcom/yf/lib/notification/views/YFHtcRemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1832
    :cond_3
    new-instance v0, Lcom/yf/lib/notification/views/YFHtcRemoteViews;

    iget-object v1, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->e:Lcom/yf/lib/notification/views/YFHtcRemoteViews$a;

    invoke-direct {v0, p1, v1}, Lcom/yf/lib/notification/views/YFHtcRemoteViews;-><init>(Landroid/os/Parcel;Lcom/yf/lib/notification/views/YFHtcRemoteViews$a;)V

    iput-object v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->g:Lcom/yf/lib/notification/views/YFHtcRemoteViews;

    .line 1833
    new-instance v0, Lcom/yf/lib/notification/views/YFHtcRemoteViews;

    iget-object v1, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->e:Lcom/yf/lib/notification/views/YFHtcRemoteViews$a;

    invoke-direct {v0, p1, v1}, Lcom/yf/lib/notification/views/YFHtcRemoteViews;-><init>(Landroid/os/Parcel;Lcom/yf/lib/notification/views/YFHtcRemoteViews$a;)V

    iput-object v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->h:Lcom/yf/lib/notification/views/YFHtcRemoteViews;

    .line 1834
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->h:Lcom/yf/lib/notification/views/YFHtcRemoteViews;

    iget-object v0, v0, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->a:Landroid/content/pm/ApplicationInfo;

    iput-object v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->a:Landroid/content/pm/ApplicationInfo;

    .line 1835
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->h:Lcom/yf/lib/notification/views/YFHtcRemoteViews;

    invoke-virtual {v0}, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->d()I

    move-result v0

    iput v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->b:I

    .line 1839
    :cond_4
    new-instance v0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$b;

    invoke-direct {v0, p0}, Lcom/yf/lib/notification/views/YFHtcRemoteViews$b;-><init>(Lcom/yf/lib/notification/views/YFHtcRemoteViews;)V

    iput-object v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->d:Lcom/yf/lib/notification/views/YFHtcRemoteViews$b;

    .line 1840
    invoke-virtual {p0}, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->e()V

    .line 1841
    return-void

    .line 1775
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

    .line 1845
    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    .line 1846
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v1, :cond_1

    .line 1847
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    .line 1848
    if-lt v3, v0, :cond_0

    const/16 v4, 0x11

    if-gt v3, v4, :cond_0

    .line 1852
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_0

    .line 1853
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1857
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
    .line 1330
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->f:Z

    .line 1331
    return-void
.end method

.method public a(Lcom/yf/lib/notification/views/YFHtcRemoteViews$a;)V
    .locals 3

    .prologue
    .line 1934
    iput-object p1, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->e:Lcom/yf/lib/notification/views/YFHtcRemoteViews$a;

    .line 1935
    invoke-virtual {p0}, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1936
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1937
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1938
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 1939
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$Action;

    invoke-virtual {v0, p1}, Lcom/yf/lib/notification/views/YFHtcRemoteViews$Action;->a(Lcom/yf/lib/notification/views/YFHtcRemoteViews$a;)V

    .line 1938
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1943
    :cond_0
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->g:Lcom/yf/lib/notification/views/YFHtcRemoteViews;

    invoke-virtual {v0, p1}, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->a(Lcom/yf/lib/notification/views/YFHtcRemoteViews$a;)V

    .line 1944
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->h:Lcom/yf/lib/notification/views/YFHtcRemoteViews;

    invoke-virtual {v0, p1}, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->a(Lcom/yf/lib/notification/views/YFHtcRemoteViews$a;)V

    .line 1946
    :cond_1
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 1711
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->g:Lcom/yf/lib/notification/views/YFHtcRemoteViews;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->h:Lcom/yf/lib/notification/views/YFHtcRemoteViews;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Lcom/yf/lib/notification/views/YFHtcRemoteViews;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1872
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1873
    invoke-virtual {p0, v0, v1}, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1874
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1875
    new-instance v1, Lcom/yf/lib/notification/views/YFHtcRemoteViews;

    invoke-direct {v1, v0}, Lcom/yf/lib/notification/views/YFHtcRemoteViews;-><init>(Landroid/os/Parcel;)V

    .line 1876
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1877
    return-object v1
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->c()Lcom/yf/lib/notification/views/YFHtcRemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 1892
    iget v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->b:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 2699
    const/4 v0, 0x0

    return v0
.end method

.method public e()V
    .locals 4

    .prologue
    .line 1910
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->d:Lcom/yf/lib/notification/views/YFHtcRemoteViews$b;

    invoke-virtual {v0}, Lcom/yf/lib/notification/views/YFHtcRemoteViews$b;->a()V

    .line 1912
    invoke-virtual {p0}, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1914
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1915
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1916
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 1917
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$Action;

    iget-object v3, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->d:Lcom/yf/lib/notification/views/YFHtcRemoteViews$b;

    invoke-virtual {v0, v3}, Lcom/yf/lib/notification/views/YFHtcRemoteViews$Action;->a(Lcom/yf/lib/notification/views/YFHtcRemoteViews$b;)V

    .line 1916
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1920
    :cond_0
    iget-boolean v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->f:Z

    if-eqz v0, :cond_1

    .line 1921
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->e:Lcom/yf/lib/notification/views/YFHtcRemoteViews$a;

    iget-object v1, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->d:Lcom/yf/lib/notification/views/YFHtcRemoteViews$b;

    invoke-virtual {v0, v1}, Lcom/yf/lib/notification/views/YFHtcRemoteViews$a;->a(Lcom/yf/lib/notification/views/YFHtcRemoteViews$b;)V

    .line 1928
    :cond_1
    :goto_1
    return-void

    .line 1924
    :cond_2
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->d:Lcom/yf/lib/notification/views/YFHtcRemoteViews$b;

    iget-object v1, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->g:Lcom/yf/lib/notification/views/YFHtcRemoteViews;

    invoke-virtual {v1}, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yf/lib/notification/views/YFHtcRemoteViews$b;->a(I)V

    .line 1925
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->d:Lcom/yf/lib/notification/views/YFHtcRemoteViews$b;

    iget-object v1, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->h:Lcom/yf/lib/notification/views/YFHtcRemoteViews;

    invoke-virtual {v1}, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yf/lib/notification/views/YFHtcRemoteViews$b;->a(I)V

    .line 1926
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->e:Lcom/yf/lib/notification/views/YFHtcRemoteViews$a;

    iget-object v1, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->d:Lcom/yf/lib/notification/views/YFHtcRemoteViews$b;

    invoke-virtual {v0, v1}, Lcom/yf/lib/notification/views/YFHtcRemoteViews$a;->a(Lcom/yf/lib/notification/views/YFHtcRemoteViews$b;)V

    goto :goto_1
.end method

.method public f()I
    .locals 1

    .prologue
    .line 1953
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->d:Lcom/yf/lib/notification/views/YFHtcRemoteViews$b;

    invoke-virtual {v0}, Lcom/yf/lib/notification/views/YFHtcRemoteViews$b;->b()I

    move-result v0

    return v0
.end method

.method public onLoadClass(Ljava/lang/Class;)Z
    .locals 1

    .prologue
    .line 2695
    const-class v0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$e;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2703
    invoke-virtual {p0}, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->b()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2704
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2707
    iget-boolean v2, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->f:Z

    if-eqz v2, :cond_0

    .line 2708
    iget-object v2, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->e:Lcom/yf/lib/notification/views/YFHtcRemoteViews$a;

    invoke-virtual {v2, p1, p2}, Lcom/yf/lib/notification/views/YFHtcRemoteViews$a;->a(Landroid/os/Parcel;I)V

    .line 2710
    :cond_0
    iget-object v2, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->a:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2711
    iget v2, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->b:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2712
    iget-boolean v2, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->i:Z

    if-eqz v2, :cond_1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2714
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 2715
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v0

    .line 2719
    :goto_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v1

    .line 2720
    :goto_2
    if-ge v3, v2, :cond_5

    .line 2721
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/lib/notification/views/YFHtcRemoteViews$Action;

    .line 2722
    invoke-virtual {v0, p1, v1}, Lcom/yf/lib/notification/views/YFHtcRemoteViews$Action;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2720
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_1
    move v0, v1

    .line 2712
    goto :goto_0

    :cond_2
    move v2, v1

    .line 2717
    goto :goto_1

    .line 2725
    :cond_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2728
    iget-boolean v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->f:Z

    if-eqz v0, :cond_4

    .line 2729
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->e:Lcom/yf/lib/notification/views/YFHtcRemoteViews$a;

    invoke-virtual {v0, p1, p2}, Lcom/yf/lib/notification/views/YFHtcRemoteViews$a;->a(Landroid/os/Parcel;I)V

    .line 2731
    :cond_4
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->g:Lcom/yf/lib/notification/views/YFHtcRemoteViews;

    invoke-virtual {v0, p1, p2}, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2732
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->h:Lcom/yf/lib/notification/views/YFHtcRemoteViews;

    invoke-virtual {v0, p1, p2}, Lcom/yf/lib/notification/views/YFHtcRemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2734
    :cond_5
    return-void
.end method
