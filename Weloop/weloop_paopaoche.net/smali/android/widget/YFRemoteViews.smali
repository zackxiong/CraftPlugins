.class public Landroid/widget/YFRemoteViews;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/os/Parcelable;
.implements Landroid/view/LayoutInflater$Filter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/YFRemoteViews$1;,
        Landroid/widget/YFRemoteViews$c;,
        Landroid/widget/YFRemoteViews$ViewPaddingAction;,
        Landroid/widget/YFRemoteViews$TextViewSizeAction;,
        Landroid/widget/YFRemoteViews$TextViewDrawableAction;,
        Landroid/widget/YFRemoteViews$ViewGroupAction;,
        Landroid/widget/YFRemoteViews$ReflectionAction;,
        Landroid/widget/YFRemoteViews$BitmapReflectionAction;,
        Landroid/widget/YFRemoteViews$b;,
        Landroid/widget/YFRemoteViews$ReflectionActionWithoutParams;,
        Landroid/widget/YFRemoteViews$SetDrawableParameters;,
        Landroid/widget/YFRemoteViews$SetOnClickPendingIntent;,
        Landroid/widget/YFRemoteViews$SetRemoteViewsAdapterIntent;,
        Landroid/widget/YFRemoteViews$SetRemoteViewsAdapterList;,
        Landroid/widget/YFRemoteViews$SetPendingIntentTemplate;,
        Landroid/widget/YFRemoteViews$SetOnClickFillInIntent;,
        Landroid/widget/YFRemoteViews$SetEmptyView;,
        Landroid/widget/YFRemoteViews$Action;,
        Landroid/widget/YFRemoteViews$e;,
        Landroid/widget/YFRemoteViews$a;,
        Landroid/widget/YFRemoteViews$f;,
        Landroid/widget/YFRemoteViews$d;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/widget/YFRemoteViews;",
            ">;"
        }
    .end annotation
.end field

.field public static final k:Landroid/widget/YFRemoteViews$e;

.field public static final l:[Ljava/lang/Object;

.field public static final m:Ljava/util/HashMap;
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
            "Landroid/widget/YFRemoteViews$d",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final n:Ljava/lang/ThreadLocal;
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
.field public a:Landroid/os/UserHandle;

.field public final b:Ljava/lang/String;

.field public final c:I

.field public d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/YFRemoteViews$Action;",
            ">;"
        }
    .end annotation
.end field

.field public e:Landroid/widget/YFRemoteViews$c;

.field public f:Landroid/widget/YFRemoteViews$b;

.field public g:Z

.field public h:Landroid/widget/YFRemoteViews;

.field public i:Landroid/widget/YFRemoteViews;

.field public j:Z

.field public final o:Landroid/widget/YFRemoteViews$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/YFRemoteViews$d",
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
    .line 116
    new-instance v0, Landroid/widget/YFRemoteViews$e;

    invoke-direct {v0}, Landroid/widget/YFRemoteViews$e;-><init>()V

    sput-object v0, Landroid/widget/YFRemoteViews;->k:Landroid/widget/YFRemoteViews$e;

    .line 118
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Landroid/widget/YFRemoteViews;->l:[Ljava/lang/Object;

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/widget/YFRemoteViews;->m:Ljava/util/HashMap;

    .line 121
    new-instance v0, Landroid/widget/c;

    invoke-direct {v0}, Landroid/widget/c;-><init>()V

    sput-object v0, Landroid/widget/YFRemoteViews;->n:Ljava/lang/ThreadLocal;

    .line 2320
    new-instance v0, Landroid/widget/d;

    invoke-direct {v0}, Landroid/widget/d;-><init>()V

    sput-object v0, Landroid/widget/YFRemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 1592
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/YFRemoteViews;-><init>(Landroid/os/Parcel;Landroid/widget/YFRemoteViews$b;)V

    .line 1593
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Landroid/widget/YFRemoteViews$b;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 1595
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/YFRemoteViews;->a:Landroid/os/UserHandle;

    .line 90
    iput-boolean v0, p0, Landroid/widget/YFRemoteViews;->g:Z

    .line 104
    iput-object v3, p0, Landroid/widget/YFRemoteViews;->h:Landroid/widget/YFRemoteViews;

    .line 105
    iput-object v3, p0, Landroid/widget/YFRemoteViews;->i:Landroid/widget/YFRemoteViews;

    .line 114
    iput-boolean v1, p0, Landroid/widget/YFRemoteViews;->j:Z

    .line 158
    new-instance v2, Landroid/widget/YFRemoteViews$d;

    invoke-direct {v2, v3, v3}, Landroid/widget/YFRemoteViews$d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, p0, Landroid/widget/YFRemoteViews;->o:Landroid/widget/YFRemoteViews$d;

    .line 1596
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1599
    if-nez p2, :cond_0

    .line 1600
    new-instance v3, Landroid/widget/YFRemoteViews$b;

    invoke-direct {v3, p1}, Landroid/widget/YFRemoteViews$b;-><init>(Landroid/os/Parcel;)V

    iput-object v3, p0, Landroid/widget/YFRemoteViews;->f:Landroid/widget/YFRemoteViews$b;

    .line 1606
    :goto_0
    if-nez v2, :cond_2

    .line 1607
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/YFRemoteViews;->b:Ljava/lang/String;

    .line 1608
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/widget/YFRemoteViews;->c:I

    .line 1609
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_1
    iput-boolean v0, p0, Landroid/widget/YFRemoteViews;->j:Z

    .line 1611
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1612
    if-lez v0, :cond_3

    .line 1613
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Landroid/widget/YFRemoteViews;->d:Ljava/util/ArrayList;

    .line 1614
    :goto_2
    if-ge v1, v0, :cond_3

    .line 1615
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1616
    packed-switch v2, :pswitch_data_0

    .line 1660
    :pswitch_0
    new-instance v0, Landroid/widget/YFRemoteViews$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tag "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/YFRemoteViews$a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1602
    :cond_0
    invoke-virtual {p0, p2}, Landroid/widget/YFRemoteViews;->a(Landroid/widget/YFRemoteViews$b;)V

    .line 1603
    invoke-virtual {p0}, Landroid/widget/YFRemoteViews;->a()V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1609
    goto :goto_1

    .line 1618
    :pswitch_1
    iget-object v2, p0, Landroid/widget/YFRemoteViews;->d:Ljava/util/ArrayList;

    new-instance v3, Landroid/widget/YFRemoteViews$SetOnClickPendingIntent;

    invoke-direct {v3, p0, p1}, Landroid/widget/YFRemoteViews$SetOnClickPendingIntent;-><init>(Landroid/widget/YFRemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1614
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1621
    :pswitch_2
    iget-object v2, p0, Landroid/widget/YFRemoteViews;->d:Ljava/util/ArrayList;

    new-instance v3, Landroid/widget/YFRemoteViews$SetDrawableParameters;

    invoke-direct {v3, p0, p1}, Landroid/widget/YFRemoteViews$SetDrawableParameters;-><init>(Landroid/widget/YFRemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1624
    :pswitch_3
    iget-object v2, p0, Landroid/widget/YFRemoteViews;->d:Ljava/util/ArrayList;

    new-instance v3, Landroid/widget/YFRemoteViews$ReflectionAction;

    invoke-direct {v3, p0, p1}, Landroid/widget/YFRemoteViews$ReflectionAction;-><init>(Landroid/widget/YFRemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1627
    :pswitch_4
    iget-object v2, p0, Landroid/widget/YFRemoteViews;->d:Ljava/util/ArrayList;

    new-instance v3, Landroid/widget/YFRemoteViews$ViewGroupAction;

    iget-object v4, p0, Landroid/widget/YFRemoteViews;->f:Landroid/widget/YFRemoteViews$b;

    invoke-direct {v3, p0, p1, v4}, Landroid/widget/YFRemoteViews$ViewGroupAction;-><init>(Landroid/widget/YFRemoteViews;Landroid/os/Parcel;Landroid/widget/YFRemoteViews$b;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1630
    :pswitch_5
    iget-object v2, p0, Landroid/widget/YFRemoteViews;->d:Ljava/util/ArrayList;

    new-instance v3, Landroid/widget/YFRemoteViews$ReflectionActionWithoutParams;

    invoke-direct {v3, p0, p1}, Landroid/widget/YFRemoteViews$ReflectionActionWithoutParams;-><init>(Landroid/widget/YFRemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1633
    :pswitch_6
    iget-object v2, p0, Landroid/widget/YFRemoteViews;->d:Ljava/util/ArrayList;

    new-instance v3, Landroid/widget/YFRemoteViews$SetEmptyView;

    invoke-direct {v3, p0, p1}, Landroid/widget/YFRemoteViews$SetEmptyView;-><init>(Landroid/widget/YFRemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1636
    :pswitch_7
    iget-object v2, p0, Landroid/widget/YFRemoteViews;->d:Ljava/util/ArrayList;

    new-instance v3, Landroid/widget/YFRemoteViews$SetPendingIntentTemplate;

    invoke-direct {v3, p0, p1}, Landroid/widget/YFRemoteViews$SetPendingIntentTemplate;-><init>(Landroid/widget/YFRemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1639
    :pswitch_8
    iget-object v2, p0, Landroid/widget/YFRemoteViews;->d:Ljava/util/ArrayList;

    new-instance v3, Landroid/widget/YFRemoteViews$SetOnClickFillInIntent;

    invoke-direct {v3, p0, p1}, Landroid/widget/YFRemoteViews$SetOnClickFillInIntent;-><init>(Landroid/widget/YFRemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1642
    :pswitch_9
    iget-object v2, p0, Landroid/widget/YFRemoteViews;->d:Ljava/util/ArrayList;

    new-instance v3, Landroid/widget/YFRemoteViews$SetRemoteViewsAdapterIntent;

    invoke-direct {v3, p0, p1}, Landroid/widget/YFRemoteViews$SetRemoteViewsAdapterIntent;-><init>(Landroid/widget/YFRemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1645
    :pswitch_a
    iget-object v2, p0, Landroid/widget/YFRemoteViews;->d:Ljava/util/ArrayList;

    new-instance v3, Landroid/widget/YFRemoteViews$TextViewDrawableAction;

    invoke-direct {v3, p0, p1}, Landroid/widget/YFRemoteViews$TextViewDrawableAction;-><init>(Landroid/widget/YFRemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1648
    :pswitch_b
    iget-object v2, p0, Landroid/widget/YFRemoteViews;->d:Ljava/util/ArrayList;

    new-instance v3, Landroid/widget/YFRemoteViews$TextViewSizeAction;

    invoke-direct {v3, p0, p1}, Landroid/widget/YFRemoteViews$TextViewSizeAction;-><init>(Landroid/widget/YFRemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1651
    :pswitch_c
    iget-object v2, p0, Landroid/widget/YFRemoteViews;->d:Ljava/util/ArrayList;

    new-instance v3, Landroid/widget/YFRemoteViews$ViewPaddingAction;

    invoke-direct {v3, p0, p1}, Landroid/widget/YFRemoteViews$ViewPaddingAction;-><init>(Landroid/widget/YFRemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1654
    :pswitch_d
    iget-object v2, p0, Landroid/widget/YFRemoteViews;->d:Ljava/util/ArrayList;

    new-instance v3, Landroid/widget/YFRemoteViews$BitmapReflectionAction;

    invoke-direct {v3, p0, p1}, Landroid/widget/YFRemoteViews$BitmapReflectionAction;-><init>(Landroid/widget/YFRemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1657
    :pswitch_e
    iget-object v2, p0, Landroid/widget/YFRemoteViews;->d:Ljava/util/ArrayList;

    new-instance v3, Landroid/widget/YFRemoteViews$SetRemoteViewsAdapterList;

    invoke-direct {v3, p0, p1}, Landroid/widget/YFRemoteViews$SetRemoteViewsAdapterList;-><init>(Landroid/widget/YFRemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1666
    :cond_2
    new-instance v0, Landroid/widget/YFRemoteViews;

    iget-object v1, p0, Landroid/widget/YFRemoteViews;->f:Landroid/widget/YFRemoteViews$b;

    invoke-direct {v0, p1, v1}, Landroid/widget/YFRemoteViews;-><init>(Landroid/os/Parcel;Landroid/widget/YFRemoteViews$b;)V

    iput-object v0, p0, Landroid/widget/YFRemoteViews;->h:Landroid/widget/YFRemoteViews;

    .line 1667
    new-instance v0, Landroid/widget/YFRemoteViews;

    iget-object v1, p0, Landroid/widget/YFRemoteViews;->f:Landroid/widget/YFRemoteViews$b;

    invoke-direct {v0, p1, v1}, Landroid/widget/YFRemoteViews;-><init>(Landroid/os/Parcel;Landroid/widget/YFRemoteViews$b;)V

    iput-object v0, p0, Landroid/widget/YFRemoteViews;->i:Landroid/widget/YFRemoteViews;

    .line 1668
    iget-object v0, p0, Landroid/widget/YFRemoteViews;->i:Landroid/widget/YFRemoteViews;

    invoke-virtual {v0}, Landroid/widget/YFRemoteViews;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/YFRemoteViews;->b:Ljava/lang/String;

    .line 1669
    iget-object v0, p0, Landroid/widget/YFRemoteViews;->i:Landroid/widget/YFRemoteViews;

    invoke-virtual {v0}, Landroid/widget/YFRemoteViews;->e()I

    move-result v0

    iput v0, p0, Landroid/widget/YFRemoteViews;->c:I

    .line 1673
    :cond_3
    new-instance v0, Landroid/widget/YFRemoteViews$c;

    invoke-direct {v0, p0}, Landroid/widget/YFRemoteViews$c;-><init>(Landroid/widget/YFRemoteViews;)V

    iput-object v0, p0, Landroid/widget/YFRemoteViews;->e:Landroid/widget/YFRemoteViews$c;

    .line 1674
    invoke-virtual {p0}, Landroid/widget/YFRemoteViews;->f()V

    .line 1675
    return-void

    .line 1616
    nop

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
    .end packed-switch
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 1274
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/YFRemoteViews;->g:Z

    .line 1275
    return-void
.end method

.method public a(Landroid/widget/YFRemoteViews$b;)V
    .locals 3

    .prologue
    .line 1739
    iput-object p1, p0, Landroid/widget/YFRemoteViews;->f:Landroid/widget/YFRemoteViews$b;

    .line 1740
    invoke-virtual {p0}, Landroid/widget/YFRemoteViews;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1741
    iget-object v0, p0, Landroid/widget/YFRemoteViews;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1742
    iget-object v0, p0, Landroid/widget/YFRemoteViews;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1743
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 1744
    iget-object v0, p0, Landroid/widget/YFRemoteViews;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/YFRemoteViews$Action;

    invoke-virtual {v0, p1}, Landroid/widget/YFRemoteViews$Action;->a(Landroid/widget/YFRemoteViews$b;)V

    .line 1743
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1748
    :cond_0
    iget-object v0, p0, Landroid/widget/YFRemoteViews;->h:Landroid/widget/YFRemoteViews;

    invoke-virtual {v0, p1}, Landroid/widget/YFRemoteViews;->a(Landroid/widget/YFRemoteViews$b;)V

    .line 1749
    iget-object v0, p0, Landroid/widget/YFRemoteViews;->i:Landroid/widget/YFRemoteViews;

    invoke-virtual {v0, p1}, Landroid/widget/YFRemoteViews;->a(Landroid/widget/YFRemoteViews$b;)V

    .line 1751
    :cond_1
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 1553
    iget-object v0, p0, Landroid/widget/YFRemoteViews;->h:Landroid/widget/YFRemoteViews;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/YFRemoteViews;->i:Landroid/widget/YFRemoteViews;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Landroid/widget/YFRemoteViews;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1679
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1680
    invoke-virtual {p0, v0, v1}, Landroid/widget/YFRemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1681
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1682
    new-instance v1, Landroid/widget/YFRemoteViews;

    invoke-direct {v1, v0}, Landroid/widget/YFRemoteViews;-><init>(Landroid/os/Parcel;)V

    return-object v1
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Landroid/widget/YFRemoteViews;->c()Landroid/widget/YFRemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1686
    iget-object v0, p0, Landroid/widget/YFRemoteViews;->b:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 2280
    const/4 v0, 0x0

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 1697
    iget v0, p0, Landroid/widget/YFRemoteViews;->c:I

    return v0
.end method

.method public f()V
    .locals 4

    .prologue
    .line 1715
    iget-object v0, p0, Landroid/widget/YFRemoteViews;->e:Landroid/widget/YFRemoteViews$c;

    invoke-virtual {v0}, Landroid/widget/YFRemoteViews$c;->a()V

    .line 1717
    invoke-virtual {p0}, Landroid/widget/YFRemoteViews;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1719
    iget-object v0, p0, Landroid/widget/YFRemoteViews;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1720
    iget-object v0, p0, Landroid/widget/YFRemoteViews;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1721
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 1722
    iget-object v0, p0, Landroid/widget/YFRemoteViews;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/YFRemoteViews$Action;

    iget-object v3, p0, Landroid/widget/YFRemoteViews;->e:Landroid/widget/YFRemoteViews$c;

    invoke-virtual {v0, v3}, Landroid/widget/YFRemoteViews$Action;->a(Landroid/widget/YFRemoteViews$c;)V

    .line 1721
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1725
    :cond_0
    iget-boolean v0, p0, Landroid/widget/YFRemoteViews;->g:Z

    if-eqz v0, :cond_1

    .line 1726
    iget-object v0, p0, Landroid/widget/YFRemoteViews;->f:Landroid/widget/YFRemoteViews$b;

    iget-object v1, p0, Landroid/widget/YFRemoteViews;->e:Landroid/widget/YFRemoteViews$c;

    invoke-virtual {v0, v1}, Landroid/widget/YFRemoteViews$b;->a(Landroid/widget/YFRemoteViews$c;)V

    .line 1733
    :cond_1
    :goto_1
    return-void

    .line 1729
    :cond_2
    iget-object v0, p0, Landroid/widget/YFRemoteViews;->e:Landroid/widget/YFRemoteViews$c;

    iget-object v1, p0, Landroid/widget/YFRemoteViews;->h:Landroid/widget/YFRemoteViews;

    invoke-virtual {v1}, Landroid/widget/YFRemoteViews;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/YFRemoteViews$c;->a(I)V

    .line 1730
    iget-object v0, p0, Landroid/widget/YFRemoteViews;->e:Landroid/widget/YFRemoteViews$c;

    iget-object v1, p0, Landroid/widget/YFRemoteViews;->i:Landroid/widget/YFRemoteViews;

    invoke-virtual {v1}, Landroid/widget/YFRemoteViews;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/YFRemoteViews$c;->a(I)V

    .line 1731
    iget-object v0, p0, Landroid/widget/YFRemoteViews;->f:Landroid/widget/YFRemoteViews$b;

    iget-object v1, p0, Landroid/widget/YFRemoteViews;->e:Landroid/widget/YFRemoteViews$c;

    invoke-virtual {v0, v1}, Landroid/widget/YFRemoteViews$b;->a(Landroid/widget/YFRemoteViews$c;)V

    goto :goto_1
.end method

.method public g()I
    .locals 1

    .prologue
    .line 1758
    iget-object v0, p0, Landroid/widget/YFRemoteViews;->e:Landroid/widget/YFRemoteViews$c;

    invoke-virtual {v0}, Landroid/widget/YFRemoteViews$c;->b()I

    move-result v0

    return v0
.end method

.method public onLoadClass(Ljava/lang/Class;)Z
    .locals 1

    .prologue
    .line 2276
    const-class v0, Landroid/widget/YFRemoteViews$f;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2284
    invoke-virtual {p0}, Landroid/widget/YFRemoteViews;->b()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2285
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2288
    iget-boolean v2, p0, Landroid/widget/YFRemoteViews;->g:Z

    if-eqz v2, :cond_0

    .line 2289
    iget-object v2, p0, Landroid/widget/YFRemoteViews;->f:Landroid/widget/YFRemoteViews$b;

    invoke-virtual {v2, p1, p2}, Landroid/widget/YFRemoteViews$b;->a(Landroid/os/Parcel;I)V

    .line 2291
    :cond_0
    iget-object v2, p0, Landroid/widget/YFRemoteViews;->b:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2292
    iget v2, p0, Landroid/widget/YFRemoteViews;->c:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2293
    iget-boolean v2, p0, Landroid/widget/YFRemoteViews;->j:Z

    if-eqz v2, :cond_1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2295
    iget-object v0, p0, Landroid/widget/YFRemoteViews;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 2296
    iget-object v0, p0, Landroid/widget/YFRemoteViews;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v0

    .line 2300
    :goto_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v1

    .line 2301
    :goto_2
    if-ge v3, v2, :cond_5

    .line 2302
    iget-object v0, p0, Landroid/widget/YFRemoteViews;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/YFRemoteViews$Action;

    .line 2303
    invoke-virtual {v0, p1, v1}, Landroid/widget/YFRemoteViews$Action;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2301
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_1
    move v0, v1

    .line 2293
    goto :goto_0

    :cond_2
    move v2, v1

    .line 2298
    goto :goto_1

    .line 2306
    :cond_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2309
    iget-boolean v0, p0, Landroid/widget/YFRemoteViews;->g:Z

    if-eqz v0, :cond_4

    .line 2310
    iget-object v0, p0, Landroid/widget/YFRemoteViews;->f:Landroid/widget/YFRemoteViews$b;

    invoke-virtual {v0, p1, p2}, Landroid/widget/YFRemoteViews$b;->a(Landroid/os/Parcel;I)V

    .line 2312
    :cond_4
    iget-object v0, p0, Landroid/widget/YFRemoteViews;->h:Landroid/widget/YFRemoteViews;

    invoke-virtual {v0, p1, p2}, Landroid/widget/YFRemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2313
    iget-object v0, p0, Landroid/widget/YFRemoteViews;->i:Landroid/widget/YFRemoteViews;

    invoke-virtual {v0, p1, p2}, Landroid/widget/YFRemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2315
    :cond_5
    return-void
.end method
