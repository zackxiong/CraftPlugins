.class public Lcom/yf/lib/notification/views/YFRemoteViews2;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/os/Parcelable;
.implements Landroid/view/LayoutInflater$Filter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/lib/notification/views/YFRemoteViews2$1;,
        Lcom/yf/lib/notification/views/YFRemoteViews2$c;,
        Lcom/yf/lib/notification/views/YFRemoteViews2$TextViewDrawableColorFilterAction;,
        Lcom/yf/lib/notification/views/YFRemoteViews2$ViewPaddingAction;,
        Lcom/yf/lib/notification/views/YFRemoteViews2$TextViewSizeAction;,
        Lcom/yf/lib/notification/views/YFRemoteViews2$TextViewDrawableAction;,
        Lcom/yf/lib/notification/views/YFRemoteViews2$ViewGroupAction;,
        Lcom/yf/lib/notification/views/YFRemoteViews2$ReflectionAction;,
        Lcom/yf/lib/notification/views/YFRemoteViews2$BitmapReflectionAction;,
        Lcom/yf/lib/notification/views/YFRemoteViews2$b;,
        Lcom/yf/lib/notification/views/YFRemoteViews2$ReflectionActionWithoutParams;,
        Lcom/yf/lib/notification/views/YFRemoteViews2$SetDrawableParameters;,
        Lcom/yf/lib/notification/views/YFRemoteViews2$SetOnClickPendingIntent;,
        Lcom/yf/lib/notification/views/YFRemoteViews2$SetRemoteViewsAdapterIntent;,
        Lcom/yf/lib/notification/views/YFRemoteViews2$SetRemoteViewsAdapterList;,
        Lcom/yf/lib/notification/views/YFRemoteViews2$SetPendingIntentTemplate;,
        Lcom/yf/lib/notification/views/YFRemoteViews2$SetOnClickFillInIntent;,
        Lcom/yf/lib/notification/views/YFRemoteViews2$SetEmptyView;,
        Lcom/yf/lib/notification/views/YFRemoteViews2$Action;,
        Lcom/yf/lib/notification/views/YFRemoteViews2$e;,
        Lcom/yf/lib/notification/views/YFRemoteViews2$a;,
        Lcom/yf/lib/notification/views/YFRemoteViews2$f;,
        Lcom/yf/lib/notification/views/YFRemoteViews2$d;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yf/lib/notification/views/YFRemoteViews2;",
            ">;"
        }
    .end annotation
.end field

.field public static final j:Lcom/yf/lib/notification/views/YFRemoteViews2$e;

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
            "Lcom/yf/lib/notification/views/YFRemoteViews2$d",
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
            "Lcom/yf/lib/notification/views/YFRemoteViews2$Action;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lcom/yf/lib/notification/views/YFRemoteViews2$c;

.field public e:Lcom/yf/lib/notification/views/YFRemoteViews2$b;

.field public f:Z

.field public g:Lcom/yf/lib/notification/views/YFRemoteViews2;

.field public h:Lcom/yf/lib/notification/views/YFRemoteViews2;

.field public i:Z

.field public final n:Lcom/yf/lib/notification/views/YFRemoteViews2$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yf/lib/notification/views/YFRemoteViews2$d",
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
    .line 135
    new-instance v0, Lcom/yf/lib/notification/views/YFRemoteViews2$e;

    invoke-direct {v0}, Lcom/yf/lib/notification/views/YFRemoteViews2$e;-><init>()V

    sput-object v0, Lcom/yf/lib/notification/views/YFRemoteViews2;->j:Lcom/yf/lib/notification/views/YFRemoteViews2$e;

    .line 137
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/yf/lib/notification/views/YFRemoteViews2;->k:[Ljava/lang/Object;

    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/yf/lib/notification/views/YFRemoteViews2;->l:Ljava/util/HashMap;

    .line 140
    new-instance v0, Lcom/yf/lib/notification/views/e;

    invoke-direct {v0}, Lcom/yf/lib/notification/views/e;-><init>()V

    sput-object v0, Lcom/yf/lib/notification/views/YFRemoteViews2;->m:Ljava/lang/ThreadLocal;

    .line 2695
    new-instance v0, Lcom/yf/lib/notification/views/f;

    invoke-direct {v0}, Lcom/yf/lib/notification/views/f;-><init>()V

    sput-object v0, Lcom/yf/lib/notification/views/YFRemoteViews2;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 1711
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yf/lib/notification/views/YFRemoteViews2;-><init>(Landroid/os/Parcel;Lcom/yf/lib/notification/views/YFRemoteViews2$b;)V

    .line 1712
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Lcom/yf/lib/notification/views/YFRemoteViews2$b;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 1714
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-boolean v1, p0, Lcom/yf/lib/notification/views/YFRemoteViews2;->f:Z

    .line 123
    iput-object v4, p0, Lcom/yf/lib/notification/views/YFRemoteViews2;->g:Lcom/yf/lib/notification/views/YFRemoteViews2;

    .line 124
    iput-object v4, p0, Lcom/yf/lib/notification/views/YFRemoteViews2;->h:Lcom/yf/lib/notification/views/YFRemoteViews2;

    .line 133
    iput-boolean v2, p0, Lcom/yf/lib/notification/views/YFRemoteViews2;->i:Z

    .line 178
    new-instance v0, Lcom/yf/lib/notification/views/YFRemoteViews2$d;

    invoke-direct {v0, p0, v4, v4}, Lcom/yf/lib/notification/views/YFRemoteViews2$d;-><init>(Lcom/yf/lib/notification/views/YFRemoteViews2;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2;->n:Lcom/yf/lib/notification/views/YFRemoteViews2$d;

    .line 1715
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1718
    if-nez p2, :cond_0

    .line 1719
    new-instance v3, Lcom/yf/lib/notification/views/YFRemoteViews2$b;

    invoke-direct {v3, p1}, Lcom/yf/lib/notification/views/YFRemoteViews2$b;-><init>(Landroid/os/Parcel;)V

    iput-object v3, p0, Lcom/yf/lib/notification/views/YFRemoteViews2;->e:Lcom/yf/lib/notification/views/YFRemoteViews2$b;

    .line 1725
    :goto_0
    if-nez v0, :cond_2

    .line 1726
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iput-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2;->a:Landroid/content/pm/ApplicationInfo;

    .line 1727
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2;->b:I

    .line 1728
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2;->i:Z

    .line 1730
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1731
    if-lez v0, :cond_3

    .line 1732
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/yf/lib/notification/views/YFRemoteViews2;->c:Ljava/util/ArrayList;

    .line 1733
    :goto_2
    if-ge v2, v0, :cond_3

    .line 1734
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1735
    packed-switch v1, :pswitch_data_0

    .line 1782
    :pswitch_0
    new-instance v0, Lcom/yf/lib/notification/views/YFRemoteViews2$a;

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

    invoke-direct {v0, v1}, Lcom/yf/lib/notification/views/YFRemoteViews2$a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1721
    :cond_0
    invoke-virtual {p0, p2}, Lcom/yf/lib/notification/views/YFRemoteViews2;->a(Lcom/yf/lib/notification/views/YFRemoteViews2$b;)V

    .line 1722
    invoke-virtual {p0}, Lcom/yf/lib/notification/views/YFRemoteViews2;->a()V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 1728
    goto :goto_1

    .line 1737
    :pswitch_1
    iget-object v1, p0, Lcom/yf/lib/notification/views/YFRemoteViews2;->c:Ljava/util/ArrayList;

    new-instance v3, Lcom/yf/lib/notification/views/YFRemoteViews2$SetOnClickPendingIntent;

    invoke-direct {v3, p0, p1}, Lcom/yf/lib/notification/views/YFRemoteViews2$SetOnClickPendingIntent;-><init>(Lcom/yf/lib/notification/views/YFRemoteViews2;Landroid/os/Parcel;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1733
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1740
    :pswitch_2
    iget-object v1, p0, Lcom/yf/lib/notification/views/YFRemoteViews2;->c:Ljava/util/ArrayList;

    new-instance v3, Lcom/yf/lib/notification/views/YFRemoteViews2$SetDrawableParameters;

    invoke-direct {v3, p0, p1}, Lcom/yf/lib/notification/views/YFRemoteViews2$SetDrawableParameters;-><init>(Lcom/yf/lib/notification/views/YFRemoteViews2;Landroid/os/Parcel;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1743
    :pswitch_3
    iget-object v1, p0, Lcom/yf/lib/notification/views/YFRemoteViews2;->c:Ljava/util/ArrayList;

    new-instance v3, Lcom/yf/lib/notification/views/YFRemoteViews2$ReflectionAction;

    invoke-direct {v3, p0, p1}, Lcom/yf/lib/notification/views/YFRemoteViews2$ReflectionAction;-><init>(Lcom/yf/lib/notification/views/YFRemoteViews2;Landroid/os/Parcel;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1746
    :pswitch_4
    iget-object v1, p0, Lcom/yf/lib/notification/views/YFRemoteViews2;->c:Ljava/util/ArrayList;

    new-instance v3, Lcom/yf/lib/notification/views/YFRemoteViews2$ViewGroupAction;

    iget-object v4, p0, Lcom/yf/lib/notification/views/YFRemoteViews2;->e:Lcom/yf/lib/notification/views/YFRemoteViews2$b;

    invoke-direct {v3, p0, p1, v4}, Lcom/yf/lib/notification/views/YFRemoteViews2$ViewGroupAction;-><init>(Lcom/yf/lib/notification/views/YFRemoteViews2;Landroid/os/Parcel;Lcom/yf/lib/notification/views/YFRemoteViews2$b;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1749
    :pswitch_5
    iget-object v1, p0, Lcom/yf/lib/notification/views/YFRemoteViews2;->c:Ljava/util/ArrayList;

    new-instance v3, Lcom/yf/lib/notification/views/YFRemoteViews2$ReflectionActionWithoutParams;

    invoke-direct {v3, p0, p1}, Lcom/yf/lib/notification/views/YFRemoteViews2$ReflectionActionWithoutParams;-><init>(Lcom/yf/lib/notification/views/YFRemoteViews2;Landroid/os/Parcel;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1752
    :pswitch_6
    iget-object v1, p0, Lcom/yf/lib/notification/views/YFRemoteViews2;->c:Ljava/util/ArrayList;

    new-instance v3, Lcom/yf/lib/notification/views/YFRemoteViews2$SetEmptyView;

    invoke-direct {v3, p0, p1}, Lcom/yf/lib/notification/views/YFRemoteViews2$SetEmptyView;-><init>(Lcom/yf/lib/notification/views/YFRemoteViews2;Landroid/os/Parcel;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1755
    :pswitch_7
    iget-object v1, p0, Lcom/yf/lib/notification/views/YFRemoteViews2;->c:Ljava/util/ArrayList;

    new-instance v3, Lcom/yf/lib/notification/views/YFRemoteViews2$SetPendingIntentTemplate;

    invoke-direct {v3, p0, p1}, Lcom/yf/lib/notification/views/YFRemoteViews2$SetPendingIntentTemplate;-><init>(Lcom/yf/lib/notification/views/YFRemoteViews2;Landroid/os/Parcel;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1758
    :pswitch_8
    iget-object v1, p0, Lcom/yf/lib/notification/views/YFRemoteViews2;->c:Ljava/util/ArrayList;

    new-instance v3, Lcom/yf/lib/notification/views/YFRemoteViews2$SetOnClickFillInIntent;

    invoke-direct {v3, p0, p1}, Lcom/yf/lib/notification/views/YFRemoteViews2$SetOnClickFillInIntent;-><init>(Lcom/yf/lib/notification/views/YFRemoteViews2;Landroid/os/Parcel;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1761
    :pswitch_9
    iget-object v1, p0, Lcom/yf/lib/notification/views/YFRemoteViews2;->c:Ljava/util/ArrayList;

    new-instance v3, Lcom/yf/lib/notification/views/YFRemoteViews2$SetRemoteViewsAdapterIntent;

    invoke-direct {v3, p0, p1}, Lcom/yf/lib/notification/views/YFRemoteViews2$SetRemoteViewsAdapterIntent;-><init>(Lcom/yf/lib/notification/views/YFRemoteViews2;Landroid/os/Parcel;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1764
    :pswitch_a
    iget-object v1, p0, Lcom/yf/lib/notification/views/YFRemoteViews2;->c:Ljava/util/ArrayList;

    new-instance v3, Lcom/yf/lib/notification/views/YFRemoteViews2$TextViewDrawableAction;

    invoke-direct {v3, p0, p1}, Lcom/yf/lib/notification/views/YFRemoteViews2$TextViewDrawableAction;-><init>(Lcom/yf/lib/notification/views/YFRemoteViews2;Landroid/os/Parcel;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1767
    :pswitch_b
    iget-object v1, p0, Lcom/yf/lib/notification/views/YFRemoteViews2;->c:Ljava/util/ArrayList;

    new-instance v3, Lcom/yf/lib/notification/views/YFRemoteViews2$TextViewSizeAction;

    invoke-direct {v3, p0, p1}, Lcom/yf/lib/notification/views/YFRemoteViews2$TextViewSizeAction;-><init>(Lcom/yf/lib/notification/views/YFRemoteViews2;Landroid/os/Parcel;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1770
    :pswitch_c
    iget-object v1, p0, Lcom/yf/lib/notification/views/YFRemoteViews2;->c:Ljava/util/ArrayList;

    new-instance v3, Lcom/yf/lib/notification/views/YFRemoteViews2$ViewPaddingAction;

    invoke-direct {v3, p0, p1}, Lcom/yf/lib/notification/views/YFRemoteViews2$ViewPaddingAction;-><init>(Lcom/yf/lib/notification/views/YFRemoteViews2;Landroid/os/Parcel;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1773
    :pswitch_d
    iget-object v1, p0, Lcom/yf/lib/notification/views/YFRemoteViews2;->c:Ljava/util/ArrayList;

    new-instance v3, Lcom/yf/lib/notification/views/YFRemoteViews2$BitmapReflectionAction;

    invoke-direct {v3, p0, p1}, Lcom/yf/lib/notification/views/YFRemoteViews2$BitmapReflectionAction;-><init>(Lcom/yf/lib/notification/views/YFRemoteViews2;Landroid/os/Parcel;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1776
    :pswitch_e
    iget-object v1, p0, Lcom/yf/lib/notification/views/YFRemoteViews2;->c:Ljava/util/ArrayList;

    new-instance v3, Lcom/yf/lib/notification/views/YFRemoteViews2$SetRemoteViewsAdapterList;

    invoke-direct {v3, p0, p1}, Lcom/yf/lib/notification/views/YFRemoteViews2$SetRemoteViewsAdapterList;-><init>(Lcom/yf/lib/notification/views/YFRemoteViews2;Landroid/os/Parcel;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1779
    :pswitch_f
    iget-object v1, p0, Lcom/yf/lib/notification/views/YFRemoteViews2;->c:Ljava/util/ArrayList;

    new-instance v3, Lcom/yf/lib/notification/views/YFRemoteViews2$TextViewDrawableColorFilterAction;

    invoke-direct {v3, p0, p1}, Lcom/yf/lib/notification/views/YFRemoteViews2$TextViewDrawableColorFilterAction;-><init>(Lcom/yf/lib/notification/views/YFRemoteViews2;Landroid/os/Parcel;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1788
    :cond_2
    new-instance v0, Lcom/yf/lib/notification/views/YFRemoteViews2;

    iget-object v1, p0, Lcom/yf/lib/notification/views/YFRemoteViews2;->e:Lcom/yf/lib/notification/views/YFRemoteViews2$b;

    invoke-direct {v0, p1, v1}, Lcom/yf/lib/notification/views/YFRemoteViews2;-><init>(Landroid/os/Parcel;Lcom/yf/lib/notification/views/YFRemoteViews2$b;)V

    iput-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2;->g:Lcom/yf/lib/notification/views/YFRemoteViews2;

    .line 1789
    new-instance v0, Lcom/yf/lib/notification/views/YFRemoteViews2;

    iget-object v1, p0, Lcom/yf/lib/notification/views/YFRemoteViews2;->e:Lcom/yf/lib/notification/views/YFRemoteViews2$b;

    invoke-direct {v0, p1, v1}, Lcom/yf/lib/notification/views/YFRemoteViews2;-><init>(Landroid/os/Parcel;Lcom/yf/lib/notification/views/YFRemoteViews2$b;)V

    iput-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2;->h:Lcom/yf/lib/notification/views/YFRemoteViews2;

    .line 1790
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2;->h:Lcom/yf/lib/notification/views/YFRemoteViews2;

    iget-object v0, v0, Lcom/yf/lib/notification/views/YFRemoteViews2;->a:Landroid/content/pm/ApplicationInfo;

    iput-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2;->a:Landroid/content/pm/ApplicationInfo;

    .line 1791
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2;->h:Lcom/yf/lib/notification/views/YFRemoteViews2;

    invoke-virtual {v0}, Lcom/yf/lib/notification/views/YFRemoteViews2;->d()I

    move-result v0

    iput v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2;->b:I

    .line 1795
    :cond_3
    new-instance v0, Lcom/yf/lib/notification/views/YFRemoteViews2$c;

    invoke-direct {v0, p0}, Lcom/yf/lib/notification/views/YFRemoteViews2$c;-><init>(Lcom/yf/lib/notification/views/YFRemoteViews2;)V

    iput-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2;->d:Lcom/yf/lib/notification/views/YFRemoteViews2$c;

    .line 1796
    invoke-virtual {p0}, Lcom/yf/lib/notification/views/YFRemoteViews2;->e()V

    .line 1797
    return-void

    .line 1735
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


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 1296
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2;->f:Z

    .line 1297
    return-void
.end method

.method public a(Lcom/yf/lib/notification/views/YFRemoteViews2$b;)V
    .locals 3

    .prologue
    .line 1863
    iput-object p1, p0, Lcom/yf/lib/notification/views/YFRemoteViews2;->e:Lcom/yf/lib/notification/views/YFRemoteViews2$b;

    .line 1864
    invoke-virtual {p0}, Lcom/yf/lib/notification/views/YFRemoteViews2;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1865
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1866
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1867
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 1868
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/lib/notification/views/YFRemoteViews2$Action;

    invoke-virtual {v0, p1}, Lcom/yf/lib/notification/views/YFRemoteViews2$Action;->a(Lcom/yf/lib/notification/views/YFRemoteViews2$b;)V

    .line 1867
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1872
    :cond_0
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2;->g:Lcom/yf/lib/notification/views/YFRemoteViews2;

    invoke-virtual {v0, p1}, Lcom/yf/lib/notification/views/YFRemoteViews2;->a(Lcom/yf/lib/notification/views/YFRemoteViews2$b;)V

    .line 1873
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2;->h:Lcom/yf/lib/notification/views/YFRemoteViews2;

    invoke-virtual {v0, p1}, Lcom/yf/lib/notification/views/YFRemoteViews2;->a(Lcom/yf/lib/notification/views/YFRemoteViews2$b;)V

    .line 1875
    :cond_1
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 1671
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2;->g:Lcom/yf/lib/notification/views/YFRemoteViews2;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2;->h:Lcom/yf/lib/notification/views/YFRemoteViews2;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Lcom/yf/lib/notification/views/YFRemoteViews2;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1801
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1802
    invoke-virtual {p0, v0, v1}, Lcom/yf/lib/notification/views/YFRemoteViews2;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1803
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1804
    new-instance v1, Lcom/yf/lib/notification/views/YFRemoteViews2;

    invoke-direct {v1, v0}, Lcom/yf/lib/notification/views/YFRemoteViews2;-><init>(Landroid/os/Parcel;)V

    .line 1805
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1806
    return-object v1
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/yf/lib/notification/views/YFRemoteViews2;->c()Lcom/yf/lib/notification/views/YFRemoteViews2;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 1821
    iget v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2;->b:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 2628
    const/4 v0, 0x0

    return v0
.end method

.method public e()V
    .locals 4

    .prologue
    .line 1839
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2;->d:Lcom/yf/lib/notification/views/YFRemoteViews2$c;

    invoke-virtual {v0}, Lcom/yf/lib/notification/views/YFRemoteViews2$c;->a()V

    .line 1841
    invoke-virtual {p0}, Lcom/yf/lib/notification/views/YFRemoteViews2;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1843
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1844
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1845
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 1846
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/lib/notification/views/YFRemoteViews2$Action;

    iget-object v3, p0, Lcom/yf/lib/notification/views/YFRemoteViews2;->d:Lcom/yf/lib/notification/views/YFRemoteViews2$c;

    invoke-virtual {v0, v3}, Lcom/yf/lib/notification/views/YFRemoteViews2$Action;->a(Lcom/yf/lib/notification/views/YFRemoteViews2$c;)V

    .line 1845
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1849
    :cond_0
    iget-boolean v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2;->f:Z

    if-eqz v0, :cond_1

    .line 1850
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2;->e:Lcom/yf/lib/notification/views/YFRemoteViews2$b;

    iget-object v1, p0, Lcom/yf/lib/notification/views/YFRemoteViews2;->d:Lcom/yf/lib/notification/views/YFRemoteViews2$c;

    invoke-virtual {v0, v1}, Lcom/yf/lib/notification/views/YFRemoteViews2$b;->a(Lcom/yf/lib/notification/views/YFRemoteViews2$c;)V

    .line 1857
    :cond_1
    :goto_1
    return-void

    .line 1853
    :cond_2
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2;->d:Lcom/yf/lib/notification/views/YFRemoteViews2$c;

    iget-object v1, p0, Lcom/yf/lib/notification/views/YFRemoteViews2;->g:Lcom/yf/lib/notification/views/YFRemoteViews2;

    invoke-virtual {v1}, Lcom/yf/lib/notification/views/YFRemoteViews2;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yf/lib/notification/views/YFRemoteViews2$c;->a(I)V

    .line 1854
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2;->d:Lcom/yf/lib/notification/views/YFRemoteViews2$c;

    iget-object v1, p0, Lcom/yf/lib/notification/views/YFRemoteViews2;->h:Lcom/yf/lib/notification/views/YFRemoteViews2;

    invoke-virtual {v1}, Lcom/yf/lib/notification/views/YFRemoteViews2;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yf/lib/notification/views/YFRemoteViews2$c;->a(I)V

    .line 1855
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2;->e:Lcom/yf/lib/notification/views/YFRemoteViews2$b;

    iget-object v1, p0, Lcom/yf/lib/notification/views/YFRemoteViews2;->d:Lcom/yf/lib/notification/views/YFRemoteViews2$c;

    invoke-virtual {v0, v1}, Lcom/yf/lib/notification/views/YFRemoteViews2$b;->a(Lcom/yf/lib/notification/views/YFRemoteViews2$c;)V

    goto :goto_1
.end method

.method public f()I
    .locals 1

    .prologue
    .line 1882
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2;->d:Lcom/yf/lib/notification/views/YFRemoteViews2$c;

    invoke-virtual {v0}, Lcom/yf/lib/notification/views/YFRemoteViews2$c;->b()I

    move-result v0

    return v0
.end method

.method public onLoadClass(Ljava/lang/Class;)Z
    .locals 1

    .prologue
    .line 2624
    const-class v0, Lcom/yf/lib/notification/views/YFRemoteViews2$f;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2632
    invoke-virtual {p0}, Lcom/yf/lib/notification/views/YFRemoteViews2;->b()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2633
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2636
    iget-boolean v2, p0, Lcom/yf/lib/notification/views/YFRemoteViews2;->f:Z

    if-eqz v2, :cond_0

    .line 2637
    iget-object v2, p0, Lcom/yf/lib/notification/views/YFRemoteViews2;->e:Lcom/yf/lib/notification/views/YFRemoteViews2$b;

    invoke-virtual {v2, p1, p2}, Lcom/yf/lib/notification/views/YFRemoteViews2$b;->a(Landroid/os/Parcel;I)V

    .line 2639
    :cond_0
    iget-object v2, p0, Lcom/yf/lib/notification/views/YFRemoteViews2;->a:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2640
    iget v2, p0, Lcom/yf/lib/notification/views/YFRemoteViews2;->b:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2641
    iget-boolean v2, p0, Lcom/yf/lib/notification/views/YFRemoteViews2;->i:Z

    if-eqz v2, :cond_1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2643
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 2644
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v0

    .line 2648
    :goto_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v1

    .line 2649
    :goto_2
    if-ge v3, v2, :cond_5

    .line 2650
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/lib/notification/views/YFRemoteViews2$Action;

    .line 2651
    invoke-virtual {v0, p1, v1}, Lcom/yf/lib/notification/views/YFRemoteViews2$Action;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2649
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_1
    move v0, v1

    .line 2641
    goto :goto_0

    :cond_2
    move v2, v1

    .line 2646
    goto :goto_1

    .line 2654
    :cond_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2657
    iget-boolean v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2;->f:Z

    if-eqz v0, :cond_4

    .line 2658
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2;->e:Lcom/yf/lib/notification/views/YFRemoteViews2$b;

    invoke-virtual {v0, p1, p2}, Lcom/yf/lib/notification/views/YFRemoteViews2$b;->a(Landroid/os/Parcel;I)V

    .line 2660
    :cond_4
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2;->g:Lcom/yf/lib/notification/views/YFRemoteViews2;

    invoke-virtual {v0, p1, p2}, Lcom/yf/lib/notification/views/YFRemoteViews2;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2661
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2;->h:Lcom/yf/lib/notification/views/YFRemoteViews2;

    invoke-virtual {v0, p1, p2}, Lcom/yf/lib/notification/views/YFRemoteViews2;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2663
    :cond_5
    return-void
.end method
