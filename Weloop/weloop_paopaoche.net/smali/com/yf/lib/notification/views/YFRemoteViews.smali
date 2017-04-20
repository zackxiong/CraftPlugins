.class public Lcom/yf/lib/notification/views/YFRemoteViews;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/os/Parcelable;
.implements Landroid/view/LayoutInflater$Filter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/lib/notification/views/YFRemoteViews$1;,
        Lcom/yf/lib/notification/views/YFRemoteViews$c;,
        Lcom/yf/lib/notification/views/YFRemoteViews$ViewPaddingAction;,
        Lcom/yf/lib/notification/views/YFRemoteViews$TextViewSizeAction;,
        Lcom/yf/lib/notification/views/YFRemoteViews$TextViewDrawableAction;,
        Lcom/yf/lib/notification/views/YFRemoteViews$ViewGroupAction;,
        Lcom/yf/lib/notification/views/YFRemoteViews$ReflectionAction;,
        Lcom/yf/lib/notification/views/YFRemoteViews$BitmapReflectionAction;,
        Lcom/yf/lib/notification/views/YFRemoteViews$b;,
        Lcom/yf/lib/notification/views/YFRemoteViews$ReflectionActionWithoutParams;,
        Lcom/yf/lib/notification/views/YFRemoteViews$SetDrawableParameters;,
        Lcom/yf/lib/notification/views/YFRemoteViews$SetOnClickPendingIntent;,
        Lcom/yf/lib/notification/views/YFRemoteViews$SetRemoteViewsAdapterIntent;,
        Lcom/yf/lib/notification/views/YFRemoteViews$SetRemoteViewsAdapterList;,
        Lcom/yf/lib/notification/views/YFRemoteViews$SetPendingIntentTemplate;,
        Lcom/yf/lib/notification/views/YFRemoteViews$SetOnClickFillInIntent;,
        Lcom/yf/lib/notification/views/YFRemoteViews$SetEmptyView;,
        Lcom/yf/lib/notification/views/YFRemoteViews$Action;,
        Lcom/yf/lib/notification/views/YFRemoteViews$e;,
        Lcom/yf/lib/notification/views/YFRemoteViews$a;,
        Lcom/yf/lib/notification/views/YFRemoteViews$f;,
        Lcom/yf/lib/notification/views/YFRemoteViews$d;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yf/lib/notification/views/YFRemoteViews;",
            ">;"
        }
    .end annotation
.end field

.field public static final k:Lcom/yf/lib/notification/views/YFRemoteViews$e;

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
            "Lcom/yf/lib/notification/views/YFRemoteViews$d",
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
            "Lcom/yf/lib/notification/views/YFRemoteViews$Action;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lcom/yf/lib/notification/views/YFRemoteViews$c;

.field public f:Lcom/yf/lib/notification/views/YFRemoteViews$b;

.field public g:Z

.field public h:Lcom/yf/lib/notification/views/YFRemoteViews;

.field public i:Lcom/yf/lib/notification/views/YFRemoteViews;

.field public j:Z

.field public final o:Lcom/yf/lib/notification/views/YFRemoteViews$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yf/lib/notification/views/YFRemoteViews$d",
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
    .line 122
    new-instance v0, Lcom/yf/lib/notification/views/YFRemoteViews$e;

    invoke-direct {v0}, Lcom/yf/lib/notification/views/YFRemoteViews$e;-><init>()V

    sput-object v0, Lcom/yf/lib/notification/views/YFRemoteViews;->k:Lcom/yf/lib/notification/views/YFRemoteViews$e;

    .line 124
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/yf/lib/notification/views/YFRemoteViews;->l:[Ljava/lang/Object;

    .line 125
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/yf/lib/notification/views/YFRemoteViews;->m:Ljava/util/HashMap;

    .line 127
    new-instance v0, Lcom/yf/lib/notification/views/c;

    invoke-direct {v0}, Lcom/yf/lib/notification/views/c;-><init>()V

    sput-object v0, Lcom/yf/lib/notification/views/YFRemoteViews;->n:Ljava/lang/ThreadLocal;

    .line 2326
    new-instance v0, Lcom/yf/lib/notification/views/d;

    invoke-direct {v0}, Lcom/yf/lib/notification/views/d;-><init>()V

    sput-object v0, Lcom/yf/lib/notification/views/YFRemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 1598
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yf/lib/notification/views/YFRemoteViews;-><init>(Landroid/os/Parcel;Lcom/yf/lib/notification/views/YFRemoteViews$b;)V

    .line 1599
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Lcom/yf/lib/notification/views/YFRemoteViews$b;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 1601
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    iput-object v2, p0, Lcom/yf/lib/notification/views/YFRemoteViews;->a:Landroid/os/UserHandle;

    .line 96
    iput-boolean v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews;->g:Z

    .line 110
    iput-object v3, p0, Lcom/yf/lib/notification/views/YFRemoteViews;->h:Lcom/yf/lib/notification/views/YFRemoteViews;

    .line 111
    iput-object v3, p0, Lcom/yf/lib/notification/views/YFRemoteViews;->i:Lcom/yf/lib/notification/views/YFRemoteViews;

    .line 120
    iput-boolean v1, p0, Lcom/yf/lib/notification/views/YFRemoteViews;->j:Z

    .line 164
    new-instance v2, Lcom/yf/lib/notification/views/YFRemoteViews$d;

    invoke-direct {v2, v3, v3}, Lcom/yf/lib/notification/views/YFRemoteViews$d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/yf/lib/notification/views/YFRemoteViews;->o:Lcom/yf/lib/notification/views/YFRemoteViews$d;

    .line 1602
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1605
    if-nez p2, :cond_0

    .line 1606
    new-instance v3, Lcom/yf/lib/notification/views/YFRemoteViews$b;

    invoke-direct {v3, p1}, Lcom/yf/lib/notification/views/YFRemoteViews$b;-><init>(Landroid/os/Parcel;)V

    iput-object v3, p0, Lcom/yf/lib/notification/views/YFRemoteViews;->f:Lcom/yf/lib/notification/views/YFRemoteViews$b;

    .line 1612
    :goto_0
    if-nez v2, :cond_2

    .line 1613
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/yf/lib/notification/views/YFRemoteViews;->b:Ljava/lang/String;

    .line 1614
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/yf/lib/notification/views/YFRemoteViews;->c:I

    .line 1615
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_1
    iput-boolean v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews;->j:Z

    .line 1617
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1618
    if-lez v0, :cond_3

    .line 1619
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/yf/lib/notification/views/YFRemoteViews;->d:Ljava/util/ArrayList;

    .line 1620
    :goto_2
    if-ge v1, v0, :cond_3

    .line 1621
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1622
    packed-switch v2, :pswitch_data_0

    .line 1666
    :pswitch_0
    new-instance v0, Lcom/yf/lib/notification/views/YFRemoteViews$a;

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

    invoke-direct {v0, v1}, Lcom/yf/lib/notification/views/YFRemoteViews$a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1608
    :cond_0
    invoke-virtual {p0, p2}, Lcom/yf/lib/notification/views/YFRemoteViews;->a(Lcom/yf/lib/notification/views/YFRemoteViews$b;)V

    .line 1609
    invoke-virtual {p0}, Lcom/yf/lib/notification/views/YFRemoteViews;->a()V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1615
    goto :goto_1

    .line 1624
    :pswitch_1
    iget-object v2, p0, Lcom/yf/lib/notification/views/YFRemoteViews;->d:Ljava/util/ArrayList;

    new-instance v3, Lcom/yf/lib/notification/views/YFRemoteViews$SetOnClickPendingIntent;

    invoke-direct {v3, p0, p1}, Lcom/yf/lib/notification/views/YFRemoteViews$SetOnClickPendingIntent;-><init>(Lcom/yf/lib/notification/views/YFRemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1620
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1627
    :pswitch_2
    iget-object v2, p0, Lcom/yf/lib/notification/views/YFRemoteViews;->d:Ljava/util/ArrayList;

    new-instance v3, Lcom/yf/lib/notification/views/YFRemoteViews$SetDrawableParameters;

    invoke-direct {v3, p0, p1}, Lcom/yf/lib/notification/views/YFRemoteViews$SetDrawableParameters;-><init>(Lcom/yf/lib/notification/views/YFRemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1630
    :pswitch_3
    iget-object v2, p0, Lcom/yf/lib/notification/views/YFRemoteViews;->d:Ljava/util/ArrayList;

    new-instance v3, Lcom/yf/lib/notification/views/YFRemoteViews$ReflectionAction;

    invoke-direct {v3, p0, p1}, Lcom/yf/lib/notification/views/YFRemoteViews$ReflectionAction;-><init>(Lcom/yf/lib/notification/views/YFRemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1633
    :pswitch_4
    iget-object v2, p0, Lcom/yf/lib/notification/views/YFRemoteViews;->d:Ljava/util/ArrayList;

    new-instance v3, Lcom/yf/lib/notification/views/YFRemoteViews$ViewGroupAction;

    iget-object v4, p0, Lcom/yf/lib/notification/views/YFRemoteViews;->f:Lcom/yf/lib/notification/views/YFRemoteViews$b;

    invoke-direct {v3, p0, p1, v4}, Lcom/yf/lib/notification/views/YFRemoteViews$ViewGroupAction;-><init>(Lcom/yf/lib/notification/views/YFRemoteViews;Landroid/os/Parcel;Lcom/yf/lib/notification/views/YFRemoteViews$b;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1636
    :pswitch_5
    iget-object v2, p0, Lcom/yf/lib/notification/views/YFRemoteViews;->d:Ljava/util/ArrayList;

    new-instance v3, Lcom/yf/lib/notification/views/YFRemoteViews$ReflectionActionWithoutParams;

    invoke-direct {v3, p0, p1}, Lcom/yf/lib/notification/views/YFRemoteViews$ReflectionActionWithoutParams;-><init>(Lcom/yf/lib/notification/views/YFRemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1639
    :pswitch_6
    iget-object v2, p0, Lcom/yf/lib/notification/views/YFRemoteViews;->d:Ljava/util/ArrayList;

    new-instance v3, Lcom/yf/lib/notification/views/YFRemoteViews$SetEmptyView;

    invoke-direct {v3, p0, p1}, Lcom/yf/lib/notification/views/YFRemoteViews$SetEmptyView;-><init>(Lcom/yf/lib/notification/views/YFRemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1642
    :pswitch_7
    iget-object v2, p0, Lcom/yf/lib/notification/views/YFRemoteViews;->d:Ljava/util/ArrayList;

    new-instance v3, Lcom/yf/lib/notification/views/YFRemoteViews$SetPendingIntentTemplate;

    invoke-direct {v3, p0, p1}, Lcom/yf/lib/notification/views/YFRemoteViews$SetPendingIntentTemplate;-><init>(Lcom/yf/lib/notification/views/YFRemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1645
    :pswitch_8
    iget-object v2, p0, Lcom/yf/lib/notification/views/YFRemoteViews;->d:Ljava/util/ArrayList;

    new-instance v3, Lcom/yf/lib/notification/views/YFRemoteViews$SetOnClickFillInIntent;

    invoke-direct {v3, p0, p1}, Lcom/yf/lib/notification/views/YFRemoteViews$SetOnClickFillInIntent;-><init>(Lcom/yf/lib/notification/views/YFRemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1648
    :pswitch_9
    iget-object v2, p0, Lcom/yf/lib/notification/views/YFRemoteViews;->d:Ljava/util/ArrayList;

    new-instance v3, Lcom/yf/lib/notification/views/YFRemoteViews$SetRemoteViewsAdapterIntent;

    invoke-direct {v3, p0, p1}, Lcom/yf/lib/notification/views/YFRemoteViews$SetRemoteViewsAdapterIntent;-><init>(Lcom/yf/lib/notification/views/YFRemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1651
    :pswitch_a
    iget-object v2, p0, Lcom/yf/lib/notification/views/YFRemoteViews;->d:Ljava/util/ArrayList;

    new-instance v3, Lcom/yf/lib/notification/views/YFRemoteViews$TextViewDrawableAction;

    invoke-direct {v3, p0, p1}, Lcom/yf/lib/notification/views/YFRemoteViews$TextViewDrawableAction;-><init>(Lcom/yf/lib/notification/views/YFRemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1654
    :pswitch_b
    iget-object v2, p0, Lcom/yf/lib/notification/views/YFRemoteViews;->d:Ljava/util/ArrayList;

    new-instance v3, Lcom/yf/lib/notification/views/YFRemoteViews$TextViewSizeAction;

    invoke-direct {v3, p0, p1}, Lcom/yf/lib/notification/views/YFRemoteViews$TextViewSizeAction;-><init>(Lcom/yf/lib/notification/views/YFRemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1657
    :pswitch_c
    iget-object v2, p0, Lcom/yf/lib/notification/views/YFRemoteViews;->d:Ljava/util/ArrayList;

    new-instance v3, Lcom/yf/lib/notification/views/YFRemoteViews$ViewPaddingAction;

    invoke-direct {v3, p0, p1}, Lcom/yf/lib/notification/views/YFRemoteViews$ViewPaddingAction;-><init>(Lcom/yf/lib/notification/views/YFRemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1660
    :pswitch_d
    iget-object v2, p0, Lcom/yf/lib/notification/views/YFRemoteViews;->d:Ljava/util/ArrayList;

    new-instance v3, Lcom/yf/lib/notification/views/YFRemoteViews$BitmapReflectionAction;

    invoke-direct {v3, p0, p1}, Lcom/yf/lib/notification/views/YFRemoteViews$BitmapReflectionAction;-><init>(Lcom/yf/lib/notification/views/YFRemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1663
    :pswitch_e
    iget-object v2, p0, Lcom/yf/lib/notification/views/YFRemoteViews;->d:Ljava/util/ArrayList;

    new-instance v3, Lcom/yf/lib/notification/views/YFRemoteViews$SetRemoteViewsAdapterList;

    invoke-direct {v3, p0, p1}, Lcom/yf/lib/notification/views/YFRemoteViews$SetRemoteViewsAdapterList;-><init>(Lcom/yf/lib/notification/views/YFRemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1672
    :cond_2
    new-instance v0, Lcom/yf/lib/notification/views/YFRemoteViews;

    iget-object v1, p0, Lcom/yf/lib/notification/views/YFRemoteViews;->f:Lcom/yf/lib/notification/views/YFRemoteViews$b;

    invoke-direct {v0, p1, v1}, Lcom/yf/lib/notification/views/YFRemoteViews;-><init>(Landroid/os/Parcel;Lcom/yf/lib/notification/views/YFRemoteViews$b;)V

    iput-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews;->h:Lcom/yf/lib/notification/views/YFRemoteViews;

    .line 1673
    new-instance v0, Lcom/yf/lib/notification/views/YFRemoteViews;

    iget-object v1, p0, Lcom/yf/lib/notification/views/YFRemoteViews;->f:Lcom/yf/lib/notification/views/YFRemoteViews$b;

    invoke-direct {v0, p1, v1}, Lcom/yf/lib/notification/views/YFRemoteViews;-><init>(Landroid/os/Parcel;Lcom/yf/lib/notification/views/YFRemoteViews$b;)V

    iput-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews;->i:Lcom/yf/lib/notification/views/YFRemoteViews;

    .line 1674
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews;->i:Lcom/yf/lib/notification/views/YFRemoteViews;

    invoke-virtual {v0}, Lcom/yf/lib/notification/views/YFRemoteViews;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews;->b:Ljava/lang/String;

    .line 1675
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews;->i:Lcom/yf/lib/notification/views/YFRemoteViews;

    invoke-virtual {v0}, Lcom/yf/lib/notification/views/YFRemoteViews;->e()I

    move-result v0

    iput v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews;->c:I

    .line 1679
    :cond_3
    new-instance v0, Lcom/yf/lib/notification/views/YFRemoteViews$c;

    invoke-direct {v0, p0}, Lcom/yf/lib/notification/views/YFRemoteViews$c;-><init>(Lcom/yf/lib/notification/views/YFRemoteViews;)V

    iput-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews;->e:Lcom/yf/lib/notification/views/YFRemoteViews$c;

    .line 1680
    invoke-virtual {p0}, Lcom/yf/lib/notification/views/YFRemoteViews;->f()V

    .line 1681
    return-void

    .line 1622
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
    .line 1280
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews;->g:Z

    .line 1281
    return-void
.end method

.method public a(Lcom/yf/lib/notification/views/YFRemoteViews$b;)V
    .locals 3

    .prologue
    .line 1745
    iput-object p1, p0, Lcom/yf/lib/notification/views/YFRemoteViews;->f:Lcom/yf/lib/notification/views/YFRemoteViews$b;

    .line 1746
    invoke-virtual {p0}, Lcom/yf/lib/notification/views/YFRemoteViews;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1747
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1748
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1749
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 1750
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/lib/notification/views/YFRemoteViews$Action;

    invoke-virtual {v0, p1}, Lcom/yf/lib/notification/views/YFRemoteViews$Action;->a(Lcom/yf/lib/notification/views/YFRemoteViews$b;)V

    .line 1749
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1754
    :cond_0
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews;->h:Lcom/yf/lib/notification/views/YFRemoteViews;

    invoke-virtual {v0, p1}, Lcom/yf/lib/notification/views/YFRemoteViews;->a(Lcom/yf/lib/notification/views/YFRemoteViews$b;)V

    .line 1755
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews;->i:Lcom/yf/lib/notification/views/YFRemoteViews;

    invoke-virtual {v0, p1}, Lcom/yf/lib/notification/views/YFRemoteViews;->a(Lcom/yf/lib/notification/views/YFRemoteViews$b;)V

    .line 1757
    :cond_1
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 1559
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews;->h:Lcom/yf/lib/notification/views/YFRemoteViews;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews;->i:Lcom/yf/lib/notification/views/YFRemoteViews;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Lcom/yf/lib/notification/views/YFRemoteViews;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1685
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1686
    invoke-virtual {p0, v0, v1}, Lcom/yf/lib/notification/views/YFRemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1687
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1688
    new-instance v1, Lcom/yf/lib/notification/views/YFRemoteViews;

    invoke-direct {v1, v0}, Lcom/yf/lib/notification/views/YFRemoteViews;-><init>(Landroid/os/Parcel;)V

    return-object v1
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/yf/lib/notification/views/YFRemoteViews;->c()Lcom/yf/lib/notification/views/YFRemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1692
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews;->b:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 2286
    const/4 v0, 0x0

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 1703
    iget v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews;->c:I

    return v0
.end method

.method public f()V
    .locals 4

    .prologue
    .line 1721
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews;->e:Lcom/yf/lib/notification/views/YFRemoteViews$c;

    invoke-virtual {v0}, Lcom/yf/lib/notification/views/YFRemoteViews$c;->a()V

    .line 1723
    invoke-virtual {p0}, Lcom/yf/lib/notification/views/YFRemoteViews;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1725
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1726
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1727
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 1728
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/lib/notification/views/YFRemoteViews$Action;

    iget-object v3, p0, Lcom/yf/lib/notification/views/YFRemoteViews;->e:Lcom/yf/lib/notification/views/YFRemoteViews$c;

    invoke-virtual {v0, v3}, Lcom/yf/lib/notification/views/YFRemoteViews$Action;->a(Lcom/yf/lib/notification/views/YFRemoteViews$c;)V

    .line 1727
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1731
    :cond_0
    iget-boolean v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews;->g:Z

    if-eqz v0, :cond_1

    .line 1732
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews;->f:Lcom/yf/lib/notification/views/YFRemoteViews$b;

    iget-object v1, p0, Lcom/yf/lib/notification/views/YFRemoteViews;->e:Lcom/yf/lib/notification/views/YFRemoteViews$c;

    invoke-virtual {v0, v1}, Lcom/yf/lib/notification/views/YFRemoteViews$b;->a(Lcom/yf/lib/notification/views/YFRemoteViews$c;)V

    .line 1739
    :cond_1
    :goto_1
    return-void

    .line 1735
    :cond_2
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews;->e:Lcom/yf/lib/notification/views/YFRemoteViews$c;

    iget-object v1, p0, Lcom/yf/lib/notification/views/YFRemoteViews;->h:Lcom/yf/lib/notification/views/YFRemoteViews;

    invoke-virtual {v1}, Lcom/yf/lib/notification/views/YFRemoteViews;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yf/lib/notification/views/YFRemoteViews$c;->a(I)V

    .line 1736
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews;->e:Lcom/yf/lib/notification/views/YFRemoteViews$c;

    iget-object v1, p0, Lcom/yf/lib/notification/views/YFRemoteViews;->i:Lcom/yf/lib/notification/views/YFRemoteViews;

    invoke-virtual {v1}, Lcom/yf/lib/notification/views/YFRemoteViews;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yf/lib/notification/views/YFRemoteViews$c;->a(I)V

    .line 1737
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews;->f:Lcom/yf/lib/notification/views/YFRemoteViews$b;

    iget-object v1, p0, Lcom/yf/lib/notification/views/YFRemoteViews;->e:Lcom/yf/lib/notification/views/YFRemoteViews$c;

    invoke-virtual {v0, v1}, Lcom/yf/lib/notification/views/YFRemoteViews$b;->a(Lcom/yf/lib/notification/views/YFRemoteViews$c;)V

    goto :goto_1
.end method

.method public g()I
    .locals 1

    .prologue
    .line 1764
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews;->e:Lcom/yf/lib/notification/views/YFRemoteViews$c;

    invoke-virtual {v0}, Lcom/yf/lib/notification/views/YFRemoteViews$c;->b()I

    move-result v0

    return v0
.end method

.method public onLoadClass(Ljava/lang/Class;)Z
    .locals 1

    .prologue
    .line 2282
    const-class v0, Lcom/yf/lib/notification/views/YFRemoteViews$f;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2290
    invoke-virtual {p0}, Lcom/yf/lib/notification/views/YFRemoteViews;->b()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2291
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2294
    iget-boolean v2, p0, Lcom/yf/lib/notification/views/YFRemoteViews;->g:Z

    if-eqz v2, :cond_0

    .line 2295
    iget-object v2, p0, Lcom/yf/lib/notification/views/YFRemoteViews;->f:Lcom/yf/lib/notification/views/YFRemoteViews$b;

    invoke-virtual {v2, p1, p2}, Lcom/yf/lib/notification/views/YFRemoteViews$b;->a(Landroid/os/Parcel;I)V

    .line 2297
    :cond_0
    iget-object v2, p0, Lcom/yf/lib/notification/views/YFRemoteViews;->b:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2298
    iget v2, p0, Lcom/yf/lib/notification/views/YFRemoteViews;->c:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2299
    iget-boolean v2, p0, Lcom/yf/lib/notification/views/YFRemoteViews;->j:Z

    if-eqz v2, :cond_1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2301
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 2302
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v0

    .line 2306
    :goto_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v1

    .line 2307
    :goto_2
    if-ge v3, v2, :cond_5

    .line 2308
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/lib/notification/views/YFRemoteViews$Action;

    .line 2309
    invoke-virtual {v0, p1, v1}, Lcom/yf/lib/notification/views/YFRemoteViews$Action;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2307
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_1
    move v0, v1

    .line 2299
    goto :goto_0

    :cond_2
    move v2, v1

    .line 2304
    goto :goto_1

    .line 2312
    :cond_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2315
    iget-boolean v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews;->g:Z

    if-eqz v0, :cond_4

    .line 2316
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews;->f:Lcom/yf/lib/notification/views/YFRemoteViews$b;

    invoke-virtual {v0, p1, p2}, Lcom/yf/lib/notification/views/YFRemoteViews$b;->a(Landroid/os/Parcel;I)V

    .line 2318
    :cond_4
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews;->h:Lcom/yf/lib/notification/views/YFRemoteViews;

    invoke-virtual {v0, p1, p2}, Lcom/yf/lib/notification/views/YFRemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2319
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews;->i:Lcom/yf/lib/notification/views/YFRemoteViews;

    invoke-virtual {v0, p1, p2}, Lcom/yf/lib/notification/views/YFRemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2321
    :cond_5
    return-void
.end method
