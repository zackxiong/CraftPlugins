.class public Landroid/widget/YFRemoteViews3;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/os/Parcelable;
.implements Landroid/view/LayoutInflater$Filter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/YFRemoteViews3$1;,
        Landroid/widget/YFRemoteViews3$c;,
        Landroid/widget/YFRemoteViews3$TextViewDrawableColorFilterAction;,
        Landroid/widget/YFRemoteViews3$ViewPaddingAction;,
        Landroid/widget/YFRemoteViews3$TextViewSizeAction;,
        Landroid/widget/YFRemoteViews3$TextViewDrawableAction;,
        Landroid/widget/YFRemoteViews3$ViewGroupAction;,
        Landroid/widget/YFRemoteViews3$ReflectionAction;,
        Landroid/widget/YFRemoteViews3$BitmapReflectionAction;,
        Landroid/widget/YFRemoteViews3$b;,
        Landroid/widget/YFRemoteViews3$ReflectionActionWithoutParams;,
        Landroid/widget/YFRemoteViews3$SetDrawableParameters;,
        Landroid/widget/YFRemoteViews3$SetOnClickPendingIntent;,
        Landroid/widget/YFRemoteViews3$SetRemoteViewsAdapterIntent;,
        Landroid/widget/YFRemoteViews3$SetRemoteViewsAdapterList;,
        Landroid/widget/YFRemoteViews3$SetPendingIntentTemplate;,
        Landroid/widget/YFRemoteViews3$SetOnClickFillInIntent;,
        Landroid/widget/YFRemoteViews3$SetEmptyView;,
        Landroid/widget/YFRemoteViews3$Action;,
        Landroid/widget/YFRemoteViews3$e;,
        Landroid/widget/YFRemoteViews3$a;,
        Landroid/widget/YFRemoteViews3$f;,
        Landroid/widget/YFRemoteViews3$d;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/widget/YFRemoteViews3;",
            ">;"
        }
    .end annotation
.end field

.field private static final j:Landroid/widget/YFRemoteViews3$e;

.field private static final k:[Ljava/lang/Object;

.field private static final l:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Landroid/view/View;",
            ">;",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/widget/YFRemoteViews3$d",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final m:Ljava/lang/ThreadLocal;
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
            "Landroid/widget/YFRemoteViews3$Action;",
            ">;"
        }
    .end annotation
.end field

.field public d:Landroid/widget/YFRemoteViews3$c;

.field public e:Landroid/widget/YFRemoteViews3$b;

.field public f:Z

.field public g:Landroid/widget/YFRemoteViews3;

.field public h:Landroid/widget/YFRemoteViews3;

.field public i:Z

.field private final n:Landroid/widget/YFRemoteViews3$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/YFRemoteViews3$d",
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
    .line 141
    new-instance v0, Landroid/widget/YFRemoteViews3$e;

    invoke-direct {v0}, Landroid/widget/YFRemoteViews3$e;-><init>()V

    sput-object v0, Landroid/widget/YFRemoteViews3;->j:Landroid/widget/YFRemoteViews3$e;

    .line 143
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Landroid/widget/YFRemoteViews3;->k:[Ljava/lang/Object;

    .line 147
    invoke-static {}, Landroid/widget/YFRemoteViews3;->f()Landroid/util/ArrayMap;

    move-result-object v0

    sput-object v0, Landroid/widget/YFRemoteViews3;->l:Landroid/util/ArrayMap;

    .line 149
    new-instance v0, Landroid/widget/g;

    invoke-direct {v0}, Landroid/widget/g;-><init>()V

    sput-object v0, Landroid/widget/YFRemoteViews3;->m:Ljava/lang/ThreadLocal;

    .line 2937
    new-instance v0, Landroid/widget/h;

    invoke-direct {v0}, Landroid/widget/h;-><init>()V

    sput-object v0, Landroid/widget/YFRemoteViews3;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 1837
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/YFRemoteViews3;-><init>(Landroid/os/Parcel;Landroid/widget/YFRemoteViews3$b;)V

    .line 1838
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Landroid/widget/YFRemoteViews3$b;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 1840
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-boolean v1, p0, Landroid/widget/YFRemoteViews3;->f:Z

    .line 129
    iput-object v4, p0, Landroid/widget/YFRemoteViews3;->g:Landroid/widget/YFRemoteViews3;

    .line 130
    iput-object v4, p0, Landroid/widget/YFRemoteViews3;->h:Landroid/widget/YFRemoteViews3;

    .line 139
    iput-boolean v2, p0, Landroid/widget/YFRemoteViews3;->i:Z

    .line 196
    new-instance v0, Landroid/widget/YFRemoteViews3$d;

    invoke-direct {v0, v4, v4}, Landroid/widget/YFRemoteViews3$d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/widget/YFRemoteViews3;->n:Landroid/widget/YFRemoteViews3$d;

    .line 1841
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1844
    if-nez p2, :cond_0

    .line 1845
    new-instance v3, Landroid/widget/YFRemoteViews3$b;

    invoke-direct {v3, p1}, Landroid/widget/YFRemoteViews3$b;-><init>(Landroid/os/Parcel;)V

    iput-object v3, p0, Landroid/widget/YFRemoteViews3;->e:Landroid/widget/YFRemoteViews3$b;

    .line 1851
    :goto_0
    if-nez v0, :cond_2

    .line 1852
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iput-object v0, p0, Landroid/widget/YFRemoteViews3;->a:Landroid/content/pm/ApplicationInfo;

    .line 1853
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/YFRemoteViews3;->b:I

    .line 1854
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/widget/YFRemoteViews3;->i:Z

    .line 1856
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1857
    if-lez v0, :cond_3

    .line 1858
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/widget/YFRemoteViews3;->c:Ljava/util/ArrayList;

    .line 1859
    :goto_2
    if-ge v2, v0, :cond_3

    .line 1860
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1861
    packed-switch v1, :pswitch_data_0

    .line 1908
    :pswitch_0
    new-instance v0, Landroid/widget/YFRemoteViews3$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/YFRemoteViews3$a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1847
    :cond_0
    invoke-direct {p0, p2}, Landroid/widget/YFRemoteViews3;->a(Landroid/widget/YFRemoteViews3$b;)V

    .line 1848
    invoke-virtual {p0}, Landroid/widget/YFRemoteViews3;->a()V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 1854
    goto :goto_1

    .line 1863
    :pswitch_1
    iget-object v1, p0, Landroid/widget/YFRemoteViews3;->c:Ljava/util/ArrayList;

    new-instance v3, Landroid/widget/YFRemoteViews3$SetOnClickPendingIntent;

    invoke-direct {v3, p0, p1}, Landroid/widget/YFRemoteViews3$SetOnClickPendingIntent;-><init>(Landroid/widget/YFRemoteViews3;Landroid/os/Parcel;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1859
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1866
    :pswitch_2
    iget-object v1, p0, Landroid/widget/YFRemoteViews3;->c:Ljava/util/ArrayList;

    new-instance v3, Landroid/widget/YFRemoteViews3$SetDrawableParameters;

    invoke-direct {v3, p0, p1}, Landroid/widget/YFRemoteViews3$SetDrawableParameters;-><init>(Landroid/widget/YFRemoteViews3;Landroid/os/Parcel;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1869
    :pswitch_3
    iget-object v1, p0, Landroid/widget/YFRemoteViews3;->c:Ljava/util/ArrayList;

    new-instance v3, Landroid/widget/YFRemoteViews3$ReflectionAction;

    invoke-direct {v3, p0, p1}, Landroid/widget/YFRemoteViews3$ReflectionAction;-><init>(Landroid/widget/YFRemoteViews3;Landroid/os/Parcel;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1872
    :pswitch_4
    iget-object v1, p0, Landroid/widget/YFRemoteViews3;->c:Ljava/util/ArrayList;

    new-instance v3, Landroid/widget/YFRemoteViews3$ViewGroupAction;

    iget-object v4, p0, Landroid/widget/YFRemoteViews3;->e:Landroid/widget/YFRemoteViews3$b;

    invoke-direct {v3, p0, p1, v4}, Landroid/widget/YFRemoteViews3$ViewGroupAction;-><init>(Landroid/widget/YFRemoteViews3;Landroid/os/Parcel;Landroid/widget/YFRemoteViews3$b;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1875
    :pswitch_5
    iget-object v1, p0, Landroid/widget/YFRemoteViews3;->c:Ljava/util/ArrayList;

    new-instance v3, Landroid/widget/YFRemoteViews3$ReflectionActionWithoutParams;

    invoke-direct {v3, p0, p1}, Landroid/widget/YFRemoteViews3$ReflectionActionWithoutParams;-><init>(Landroid/widget/YFRemoteViews3;Landroid/os/Parcel;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1878
    :pswitch_6
    iget-object v1, p0, Landroid/widget/YFRemoteViews3;->c:Ljava/util/ArrayList;

    new-instance v3, Landroid/widget/YFRemoteViews3$SetEmptyView;

    invoke-direct {v3, p0, p1}, Landroid/widget/YFRemoteViews3$SetEmptyView;-><init>(Landroid/widget/YFRemoteViews3;Landroid/os/Parcel;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1881
    :pswitch_7
    iget-object v1, p0, Landroid/widget/YFRemoteViews3;->c:Ljava/util/ArrayList;

    new-instance v3, Landroid/widget/YFRemoteViews3$SetPendingIntentTemplate;

    invoke-direct {v3, p0, p1}, Landroid/widget/YFRemoteViews3$SetPendingIntentTemplate;-><init>(Landroid/widget/YFRemoteViews3;Landroid/os/Parcel;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1884
    :pswitch_8
    iget-object v1, p0, Landroid/widget/YFRemoteViews3;->c:Ljava/util/ArrayList;

    new-instance v3, Landroid/widget/YFRemoteViews3$SetOnClickFillInIntent;

    invoke-direct {v3, p0, p1}, Landroid/widget/YFRemoteViews3$SetOnClickFillInIntent;-><init>(Landroid/widget/YFRemoteViews3;Landroid/os/Parcel;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1887
    :pswitch_9
    iget-object v1, p0, Landroid/widget/YFRemoteViews3;->c:Ljava/util/ArrayList;

    new-instance v3, Landroid/widget/YFRemoteViews3$SetRemoteViewsAdapterIntent;

    invoke-direct {v3, p0, p1}, Landroid/widget/YFRemoteViews3$SetRemoteViewsAdapterIntent;-><init>(Landroid/widget/YFRemoteViews3;Landroid/os/Parcel;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1890
    :pswitch_a
    iget-object v1, p0, Landroid/widget/YFRemoteViews3;->c:Ljava/util/ArrayList;

    new-instance v3, Landroid/widget/YFRemoteViews3$TextViewDrawableAction;

    invoke-direct {v3, p0, p1}, Landroid/widget/YFRemoteViews3$TextViewDrawableAction;-><init>(Landroid/widget/YFRemoteViews3;Landroid/os/Parcel;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1893
    :pswitch_b
    iget-object v1, p0, Landroid/widget/YFRemoteViews3;->c:Ljava/util/ArrayList;

    new-instance v3, Landroid/widget/YFRemoteViews3$TextViewSizeAction;

    invoke-direct {v3, p0, p1}, Landroid/widget/YFRemoteViews3$TextViewSizeAction;-><init>(Landroid/widget/YFRemoteViews3;Landroid/os/Parcel;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1896
    :pswitch_c
    iget-object v1, p0, Landroid/widget/YFRemoteViews3;->c:Ljava/util/ArrayList;

    new-instance v3, Landroid/widget/YFRemoteViews3$ViewPaddingAction;

    invoke-direct {v3, p0, p1}, Landroid/widget/YFRemoteViews3$ViewPaddingAction;-><init>(Landroid/widget/YFRemoteViews3;Landroid/os/Parcel;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1899
    :pswitch_d
    iget-object v1, p0, Landroid/widget/YFRemoteViews3;->c:Ljava/util/ArrayList;

    new-instance v3, Landroid/widget/YFRemoteViews3$BitmapReflectionAction;

    invoke-direct {v3, p0, p1}, Landroid/widget/YFRemoteViews3$BitmapReflectionAction;-><init>(Landroid/widget/YFRemoteViews3;Landroid/os/Parcel;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1902
    :pswitch_e
    iget-object v1, p0, Landroid/widget/YFRemoteViews3;->c:Ljava/util/ArrayList;

    new-instance v3, Landroid/widget/YFRemoteViews3$SetRemoteViewsAdapterList;

    invoke-direct {v3, p0, p1}, Landroid/widget/YFRemoteViews3$SetRemoteViewsAdapterList;-><init>(Landroid/widget/YFRemoteViews3;Landroid/os/Parcel;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1905
    :pswitch_f
    iget-object v1, p0, Landroid/widget/YFRemoteViews3;->c:Ljava/util/ArrayList;

    new-instance v3, Landroid/widget/YFRemoteViews3$TextViewDrawableColorFilterAction;

    invoke-direct {v3, p0, p1}, Landroid/widget/YFRemoteViews3$TextViewDrawableColorFilterAction;-><init>(Landroid/widget/YFRemoteViews3;Landroid/os/Parcel;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1914
    :cond_2
    new-instance v0, Landroid/widget/YFRemoteViews3;

    iget-object v1, p0, Landroid/widget/YFRemoteViews3;->e:Landroid/widget/YFRemoteViews3$b;

    invoke-direct {v0, p1, v1}, Landroid/widget/YFRemoteViews3;-><init>(Landroid/os/Parcel;Landroid/widget/YFRemoteViews3$b;)V

    iput-object v0, p0, Landroid/widget/YFRemoteViews3;->g:Landroid/widget/YFRemoteViews3;

    .line 1915
    new-instance v0, Landroid/widget/YFRemoteViews3;

    iget-object v1, p0, Landroid/widget/YFRemoteViews3;->e:Landroid/widget/YFRemoteViews3$b;

    invoke-direct {v0, p1, v1}, Landroid/widget/YFRemoteViews3;-><init>(Landroid/os/Parcel;Landroid/widget/YFRemoteViews3$b;)V

    iput-object v0, p0, Landroid/widget/YFRemoteViews3;->h:Landroid/widget/YFRemoteViews3;

    .line 1916
    iget-object v0, p0, Landroid/widget/YFRemoteViews3;->h:Landroid/widget/YFRemoteViews3;

    iget-object v0, v0, Landroid/widget/YFRemoteViews3;->a:Landroid/content/pm/ApplicationInfo;

    iput-object v0, p0, Landroid/widget/YFRemoteViews3;->a:Landroid/content/pm/ApplicationInfo;

    .line 1917
    iget-object v0, p0, Landroid/widget/YFRemoteViews3;->h:Landroid/widget/YFRemoteViews3;

    invoke-virtual {v0}, Landroid/widget/YFRemoteViews3;->d()I

    move-result v0

    iput v0, p0, Landroid/widget/YFRemoteViews3;->b:I

    .line 1921
    :cond_3
    new-instance v0, Landroid/widget/YFRemoteViews3$c;

    invoke-direct {v0, p0}, Landroid/widget/YFRemoteViews3$c;-><init>(Landroid/widget/YFRemoteViews3;)V

    iput-object v0, p0, Landroid/widget/YFRemoteViews3;->d:Landroid/widget/YFRemoteViews3$c;

    .line 1922
    invoke-direct {p0}, Landroid/widget/YFRemoteViews3;->g()V

    .line 1923
    return-void

    .line 1861
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

.method private a(Landroid/widget/YFRemoteViews3$b;)V
    .locals 3

    .prologue
    .line 1989
    iput-object p1, p0, Landroid/widget/YFRemoteViews3;->e:Landroid/widget/YFRemoteViews3$b;

    .line 1990
    invoke-virtual {p0}, Landroid/widget/YFRemoteViews3;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1991
    iget-object v0, p0, Landroid/widget/YFRemoteViews3;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1992
    iget-object v0, p0, Landroid/widget/YFRemoteViews3;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1993
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 1994
    iget-object v0, p0, Landroid/widget/YFRemoteViews3;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/YFRemoteViews3$Action;

    invoke-virtual {v0, p1}, Landroid/widget/YFRemoteViews3$Action;->a(Landroid/widget/YFRemoteViews3$b;)V

    .line 1993
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1998
    :cond_0
    iget-object v0, p0, Landroid/widget/YFRemoteViews3;->g:Landroid/widget/YFRemoteViews3;

    invoke-direct {v0, p1}, Landroid/widget/YFRemoteViews3;->a(Landroid/widget/YFRemoteViews3$b;)V

    .line 1999
    iget-object v0, p0, Landroid/widget/YFRemoteViews3;->h:Landroid/widget/YFRemoteViews3;

    invoke-direct {v0, p1}, Landroid/widget/YFRemoteViews3;->a(Landroid/widget/YFRemoteViews3$b;)V

    .line 2001
    :cond_1
    return-void
.end method

.method static synthetic a(Landroid/widget/YFRemoteViews3;Landroid/widget/YFRemoteViews3$b;)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/widget/YFRemoteViews3;->a(Landroid/widget/YFRemoteViews3$b;)V

    return-void
.end method

.method private static f()Landroid/util/ArrayMap;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Landroid/view/View;",
            ">;",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/widget/YFRemoteViews3$d",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 158
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    return-object v0
.end method

.method private g()V
    .locals 4

    .prologue
    .line 1965
    iget-object v0, p0, Landroid/widget/YFRemoteViews3;->d:Landroid/widget/YFRemoteViews3$c;

    invoke-virtual {v0}, Landroid/widget/YFRemoteViews3$c;->a()V

    .line 1967
    invoke-virtual {p0}, Landroid/widget/YFRemoteViews3;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1969
    iget-object v0, p0, Landroid/widget/YFRemoteViews3;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1970
    iget-object v0, p0, Landroid/widget/YFRemoteViews3;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1971
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 1972
    iget-object v0, p0, Landroid/widget/YFRemoteViews3;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/YFRemoteViews3$Action;

    iget-object v3, p0, Landroid/widget/YFRemoteViews3;->d:Landroid/widget/YFRemoteViews3$c;

    invoke-virtual {v0, v3}, Landroid/widget/YFRemoteViews3$Action;->a(Landroid/widget/YFRemoteViews3$c;)V

    .line 1971
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1975
    :cond_0
    iget-boolean v0, p0, Landroid/widget/YFRemoteViews3;->f:Z

    if-eqz v0, :cond_1

    .line 1976
    iget-object v0, p0, Landroid/widget/YFRemoteViews3;->e:Landroid/widget/YFRemoteViews3$b;

    iget-object v1, p0, Landroid/widget/YFRemoteViews3;->d:Landroid/widget/YFRemoteViews3$c;

    invoke-virtual {v0, v1}, Landroid/widget/YFRemoteViews3$b;->a(Landroid/widget/YFRemoteViews3$c;)V

    .line 1983
    :cond_1
    :goto_1
    return-void

    .line 1979
    :cond_2
    iget-object v0, p0, Landroid/widget/YFRemoteViews3;->d:Landroid/widget/YFRemoteViews3$c;

    iget-object v1, p0, Landroid/widget/YFRemoteViews3;->g:Landroid/widget/YFRemoteViews3;

    invoke-virtual {v1}, Landroid/widget/YFRemoteViews3;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/YFRemoteViews3$c;->a(I)V

    .line 1980
    iget-object v0, p0, Landroid/widget/YFRemoteViews3;->d:Landroid/widget/YFRemoteViews3$c;

    iget-object v1, p0, Landroid/widget/YFRemoteViews3;->h:Landroid/widget/YFRemoteViews3;

    invoke-virtual {v1}, Landroid/widget/YFRemoteViews3;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/YFRemoteViews3$c;->a(I)V

    .line 1981
    iget-object v0, p0, Landroid/widget/YFRemoteViews3;->e:Landroid/widget/YFRemoteViews3$b;

    iget-object v1, p0, Landroid/widget/YFRemoteViews3;->d:Landroid/widget/YFRemoteViews3$c;

    invoke-virtual {v0, v1}, Landroid/widget/YFRemoteViews3$b;->a(Landroid/widget/YFRemoteViews3$c;)V

    goto :goto_1
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 1345
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/YFRemoteViews3;->f:Z

    .line 1346
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 1797
    iget-object v0, p0, Landroid/widget/YFRemoteViews3;->g:Landroid/widget/YFRemoteViews3;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/YFRemoteViews3;->h:Landroid/widget/YFRemoteViews3;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Landroid/widget/YFRemoteViews3;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1927
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1928
    invoke-virtual {p0, v0, v1}, Landroid/widget/YFRemoteViews3;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1929
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1930
    new-instance v1, Landroid/widget/YFRemoteViews3;

    invoke-direct {v1, v0}, Landroid/widget/YFRemoteViews3;-><init>(Landroid/os/Parcel;)V

    .line 1931
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1932
    return-object v1
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0}, Landroid/widget/YFRemoteViews3;->c()Landroid/widget/YFRemoteViews3;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 1947
    iget v0, p0, Landroid/widget/YFRemoteViews3;->b:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 2871
    const/4 v0, 0x0

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 2008
    iget-object v0, p0, Landroid/widget/YFRemoteViews3;->d:Landroid/widget/YFRemoteViews3$c;

    invoke-virtual {v0}, Landroid/widget/YFRemoteViews3$c;->b()I

    move-result v0

    return v0
.end method

.method public onLoadClass(Ljava/lang/Class;)Z
    .locals 1

    .prologue
    .line 2867
    const-class v0, Landroid/widget/YFRemoteViews3$f;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2875
    invoke-virtual {p0}, Landroid/widget/YFRemoteViews3;->b()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2876
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2879
    iget-boolean v2, p0, Landroid/widget/YFRemoteViews3;->f:Z

    if-eqz v2, :cond_0

    .line 2880
    iget-object v2, p0, Landroid/widget/YFRemoteViews3;->e:Landroid/widget/YFRemoteViews3$b;

    invoke-virtual {v2, p1, p2}, Landroid/widget/YFRemoteViews3$b;->a(Landroid/os/Parcel;I)V

    .line 2882
    :cond_0
    iget-object v2, p0, Landroid/widget/YFRemoteViews3;->a:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2883
    iget v2, p0, Landroid/widget/YFRemoteViews3;->b:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2884
    iget-boolean v2, p0, Landroid/widget/YFRemoteViews3;->i:Z

    if-eqz v2, :cond_1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2886
    iget-object v0, p0, Landroid/widget/YFRemoteViews3;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 2887
    iget-object v0, p0, Landroid/widget/YFRemoteViews3;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v0

    .line 2891
    :goto_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v1

    .line 2892
    :goto_2
    if-ge v3, v2, :cond_5

    .line 2893
    iget-object v0, p0, Landroid/widget/YFRemoteViews3;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/YFRemoteViews3$Action;

    .line 2894
    invoke-virtual {v0, p1, v1}, Landroid/widget/YFRemoteViews3$Action;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2892
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_1
    move v0, v1

    .line 2884
    goto :goto_0

    :cond_2
    move v2, v1

    .line 2889
    goto :goto_1

    .line 2897
    :cond_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2900
    iget-boolean v0, p0, Landroid/widget/YFRemoteViews3;->f:Z

    if-eqz v0, :cond_4

    .line 2901
    iget-object v0, p0, Landroid/widget/YFRemoteViews3;->e:Landroid/widget/YFRemoteViews3$b;

    invoke-virtual {v0, p1, p2}, Landroid/widget/YFRemoteViews3$b;->a(Landroid/os/Parcel;I)V

    .line 2903
    :cond_4
    iget-object v0, p0, Landroid/widget/YFRemoteViews3;->g:Landroid/widget/YFRemoteViews3;

    invoke-virtual {v0, p1, p2}, Landroid/widget/YFRemoteViews3;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2904
    iget-object v0, p0, Landroid/widget/YFRemoteViews3;->h:Landroid/widget/YFRemoteViews3;

    invoke-virtual {v0, p1, p2}, Landroid/widget/YFRemoteViews3;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2906
    :cond_5
    return-void
.end method
