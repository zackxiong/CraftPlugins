.class Lcom/baidu/location/T;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/location/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/location/T$a;
    }
.end annotation


# static fields
.field private static a:Lcom/baidu/location/T;


# instance fields
.field private Y:Ljava/util/ArrayList;

.field private Z:Z

.field private aa:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/location/T;->a:Lcom/baidu/location/T;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/T;->Y:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/baidu/location/T;->Z:Z

    iput-boolean v1, p0, Lcom/baidu/location/T;->aa:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/T;->Y:Ljava/util/ArrayList;

    return-void
.end method

.method private a(Landroid/os/Messenger;)Lcom/baidu/location/T$a;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/baidu/location/T;->Y:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/T;->Y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/T$a;

    iget-object v3, v0, Lcom/baidu/location/T$a;->for:Landroid/os/Messenger;

    invoke-virtual {v3, p1}, Landroid/os/Messenger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private a()V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/location/T;->b()V

    invoke-virtual {p0}, Lcom/baidu/location/T;->n()V

    return-void
.end method

.method private a(Lcom/baidu/location/T$a;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/baidu/location/T$a;->for:Landroid/os/Messenger;

    invoke-direct {p0, v0}, Lcom/baidu/location/T;->a(Landroid/os/Messenger;)Lcom/baidu/location/T$a;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v0, 0xe

    invoke-static {p1, v0}, Lcom/baidu/location/T$a;->a(Lcom/baidu/location/T$a;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/T;->Y:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v0, 0xd

    invoke-static {p1, v0}, Lcom/baidu/location/T$a;->a(Lcom/baidu/location/T$a;I)V

    goto :goto_0
.end method

.method private b()V
    .locals 6

    const/4 v3, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/location/T;->Y:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    move v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/T$a;

    iget-object v5, v0, Lcom/baidu/location/T$a;->do:Lcom/baidu/location/LocationClientOption;

    iget-boolean v5, v5, Lcom/baidu/location/LocationClientOption;->for:Z

    if-eqz v5, :cond_0

    move v2, v3

    :cond_0
    iget-object v0, v0, Lcom/baidu/location/T$a;->do:Lcom/baidu/location/LocationClientOption;

    iget-boolean v0, v0, Lcom/baidu/location/LocationClientOption;->goto:Z

    if-eqz v0, :cond_3

    move v0, v3

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    sput-boolean v1, Lcom/baidu/location/K;->aM:Z

    iget-boolean v0, p0, Lcom/baidu/location/T;->Z:Z

    if-eq v0, v2, :cond_2

    iput-boolean v2, p0, Lcom/baidu/location/T;->Z:Z

    invoke-static {}, Lcom/baidu/location/ao;->bg()Lcom/baidu/location/ao;

    move-result-object v0

    iget-boolean v1, p0, Lcom/baidu/location/T;->Z:Z

    invoke-virtual {v0, v1}, Lcom/baidu/location/ao;->int(Z)V

    :cond_2
    return-void

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public static q()Lcom/baidu/location/T;
    .locals 1

    sget-object v0, Lcom/baidu/location/T;->a:Lcom/baidu/location/T;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/location/T;

    invoke-direct {v0}, Lcom/baidu/location/T;-><init>()V

    sput-object v0, Lcom/baidu/location/T;->a:Lcom/baidu/location/T;

    :cond_0
    sget-object v0, Lcom/baidu/location/T;->a:Lcom/baidu/location/T;

    return-object v0
.end method


# virtual methods
.method public byte(Ljava/lang/String;)V
    .locals 3

    new-instance v1, Lcom/baidu/location/BDLocation;

    invoke-direct {v1, p1}, Lcom/baidu/location/BDLocation;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/location/v;->aI()Lcom/baidu/location/v;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/baidu/location/v;->int(Lcom/baidu/location/BDLocation;)Lcom/baidu/location/BDLocation$a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Lcom/baidu/location/BDLocation;->if(Lcom/baidu/location/BDLocation$a;)V

    :cond_0
    invoke-static {}, Lcom/baidu/location/z;->a()Lcom/baidu/location/z;

    move-result-object v0

    iput-object p1, v0, Lcom/baidu/location/z;->new:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/T;->Y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/T$a;

    invoke-virtual {v0, v1}, Lcom/baidu/location/T$a;->if(Lcom/baidu/location/BDLocation;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public do(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {p0, v0}, Lcom/baidu/location/T;->a(Landroid/os/Messenger;)Lcom/baidu/location/T$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/baidu/location/T;->Y:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {}, Lcom/baidu/location/s;->bV()Lcom/baidu/location/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/s;->bU()V

    invoke-static {}, Lcom/baidu/location/R;->for()Lcom/baidu/location/R;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/R;->do()V

    invoke-direct {p0}, Lcom/baidu/location/T;->a()V

    return-void
.end method

.method public do(Lcom/baidu/location/BDLocation;)V
    .locals 5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/baidu/location/T;->Y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/T$a;

    invoke-virtual {v0, p1}, Lcom/baidu/location/T$a;->a(Lcom/baidu/location/BDLocation;)V

    iget v3, v0, Lcom/baidu/location/T$a;->if:I

    const/4 v4, 0x4

    if-le v3, v4, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/T$a;

    iget-object v2, p0, Lcom/baidu/location/T;->Y:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-void
.end method

.method public for(Landroid/os/Message;)I
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {p0, v1}, Lcom/baidu/location/T;->a(Landroid/os/Messenger;)Lcom/baidu/location/T$a;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/baidu/location/T$a;->do:Lcom/baidu/location/LocationClientOption;

    if-eqz v2, :cond_0

    iget-object v0, v1, Lcom/baidu/location/T$a;->do:Lcom/baidu/location/LocationClientOption;

    iget v0, v0, Lcom/baidu/location/LocationClientOption;->h:I

    goto :goto_0
.end method

.method public if(Landroid/os/Message;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    const/4 v6, 0x1

    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {p0, v1}, Lcom/baidu/location/T;->a(Landroid/os/Messenger;)Lcom/baidu/location/T$a;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/baidu/location/T$a;->do:Lcom/baidu/location/LocationClientOption;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "num"

    iget-object v4, v1, Lcom/baidu/location/T$a;->do:Lcom/baidu/location/LocationClientOption;

    iget v4, v4, Lcom/baidu/location/LocationClientOption;->long:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/baidu/location/LocationClientOption;->long:I

    iget-object v0, v1, Lcom/baidu/location/T$a;->do:Lcom/baidu/location/LocationClientOption;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "distance"

    iget-object v4, v1, Lcom/baidu/location/T$a;->do:Lcom/baidu/location/LocationClientOption;

    iget v4, v4, Lcom/baidu/location/LocationClientOption;->c:F

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v2

    iput v2, v0, Lcom/baidu/location/LocationClientOption;->c:F

    iget-object v0, v1, Lcom/baidu/location/T$a;->do:Lcom/baidu/location/LocationClientOption;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "extraInfo"

    iget-object v4, v1, Lcom/baidu/location/T$a;->do:Lcom/baidu/location/LocationClientOption;

    iget-boolean v4, v4, Lcom/baidu/location/LocationClientOption;->e:Z

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/baidu/location/LocationClientOption;->e:Z

    iget-object v0, v1, Lcom/baidu/location/T$a;->do:Lcom/baidu/location/LocationClientOption;

    iput-boolean v6, v0, Lcom/baidu/location/LocationClientOption;->new:Z

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v2, "&poi=%.1f|%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v1, Lcom/baidu/location/T$a;->do:Lcom/baidu/location/LocationClientOption;

    iget v5, v5, Lcom/baidu/location/LocationClientOption;->c:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    iget-object v4, v1, Lcom/baidu/location/T$a;->do:Lcom/baidu/location/LocationClientOption;

    iget v4, v4, Lcom/baidu/location/LocationClientOption;->long:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v1, Lcom/baidu/location/T$a;->do:Lcom/baidu/location/LocationClientOption;

    iget-boolean v1, v1, Lcom/baidu/location/LocationClientOption;->e:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public if(Lcom/baidu/location/BDLocation;I)V
    .locals 5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/baidu/location/T;->Y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/T$a;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/location/T$a;->a(Lcom/baidu/location/BDLocation;I)V

    iget v3, v0, Lcom/baidu/location/T$a;->if:I

    const/4 v4, 0x4

    if-le v3, v4, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/T$a;

    iget-object v2, p0, Lcom/baidu/location/T;->Y:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-void
.end method

.method public if(Lcom/baidu/location/BDLocation;Landroid/os/Message;)V
    .locals 3

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {p0, v0}, Lcom/baidu/location/T;->a(Landroid/os/Messenger;)Lcom/baidu/location/T$a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/baidu/location/T$a;->a(Lcom/baidu/location/BDLocation;)V

    iget v1, v0, Lcom/baidu/location/T$a;->if:I

    const/4 v2, 0x4

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/baidu/location/T;->Y:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public int(Landroid/os/Message;)Z
    .locals 8

    const/16 v7, 0x3e8

    const/4 v0, 0x0

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {p0, v1}, Lcom/baidu/location/T;->a(Landroid/os/Messenger;)Lcom/baidu/location/T$a;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, v2, Lcom/baidu/location/T$a;->do:Lcom/baidu/location/LocationClientOption;

    iget v1, v1, Lcom/baidu/location/LocationClientOption;->int:I

    iget-object v3, v2, Lcom/baidu/location/T$a;->do:Lcom/baidu/location/LocationClientOption;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "scanSpan"

    iget-object v6, v2, Lcom/baidu/location/T$a;->do:Lcom/baidu/location/LocationClientOption;

    iget v6, v6, Lcom/baidu/location/LocationClientOption;->int:I

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/baidu/location/LocationClientOption;->int:I

    iget-object v3, v2, Lcom/baidu/location/T$a;->do:Lcom/baidu/location/LocationClientOption;

    iget v3, v3, Lcom/baidu/location/LocationClientOption;->int:I

    if-ge v3, v7, :cond_3

    invoke-static {}, Lcom/baidu/location/R;->for()Lcom/baidu/location/R;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/location/R;->a()V

    invoke-static {}, Lcom/baidu/location/s;->bV()Lcom/baidu/location/s;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/location/s;->bU()V

    invoke-static {}, Lcom/baidu/location/ao;->bg()Lcom/baidu/location/ao;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/location/ao;->bc()V

    :goto_1
    iget-object v3, v2, Lcom/baidu/location/T$a;->do:Lcom/baidu/location/LocationClientOption;

    iget v3, v3, Lcom/baidu/location/LocationClientOption;->int:I

    const/16 v4, 0x3e7

    if-le v3, v4, :cond_1

    if-ge v1, v7, :cond_1

    const/4 v0, 0x1

    iget-object v1, v2, Lcom/baidu/location/T$a;->do:Lcom/baidu/location/LocationClientOption;

    iget-boolean v1, v1, Lcom/baidu/location/LocationClientOption;->g:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/baidu/location/s;->bV()Lcom/baidu/location/s;

    move-result-object v1

    iget-object v3, v2, Lcom/baidu/location/T$a;->do:Lcom/baidu/location/LocationClientOption;

    iget-boolean v3, v3, Lcom/baidu/location/LocationClientOption;->g:Z

    invoke-virtual {v1, v3}, Lcom/baidu/location/s;->try(Z)V

    invoke-static {}, Lcom/baidu/location/s;->bV()Lcom/baidu/location/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/s;->bW()V

    :cond_1
    iget-object v1, v2, Lcom/baidu/location/T$a;->do:Lcom/baidu/location/LocationClientOption;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "openGPS"

    iget-object v5, v2, Lcom/baidu/location/T$a;->do:Lcom/baidu/location/LocationClientOption;

    iget-boolean v5, v5, Lcom/baidu/location/LocationClientOption;->for:Z

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v1, Lcom/baidu/location/LocationClientOption;->for:Z

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "coorType"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v2, Lcom/baidu/location/T$a;->do:Lcom/baidu/location/LocationClientOption;

    if-eqz v1, :cond_4

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    :goto_2
    iput-object v1, v3, Lcom/baidu/location/LocationClientOption;->do:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "addrType"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v2, Lcom/baidu/location/T$a;->do:Lcom/baidu/location/LocationClientOption;

    if-eqz v1, :cond_5

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    :goto_3
    iput-object v1, v3, Lcom/baidu/location/LocationClientOption;->else:Ljava/lang/String;

    sget-object v1, Lcom/baidu/location/K;->aG:Ljava/lang/String;

    iget-object v3, v2, Lcom/baidu/location/T$a;->do:Lcom/baidu/location/LocationClientOption;

    iget-object v3, v3, Lcom/baidu/location/LocationClientOption;->else:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/baidu/location/v;->aI()Lcom/baidu/location/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/v;->d()V

    :cond_2
    iget-object v1, v2, Lcom/baidu/location/T$a;->do:Lcom/baidu/location/LocationClientOption;

    iget-object v1, v1, Lcom/baidu/location/LocationClientOption;->else:Ljava/lang/String;

    sput-object v1, Lcom/baidu/location/K;->aG:Ljava/lang/String;

    iget-object v1, v2, Lcom/baidu/location/T$a;->do:Lcom/baidu/location/LocationClientOption;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "timeOut"

    iget-object v5, v2, Lcom/baidu/location/T$a;->do:Lcom/baidu/location/LocationClientOption;

    iget v5, v5, Lcom/baidu/location/LocationClientOption;->d:I

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lcom/baidu/location/LocationClientOption;->d:I

    iget-object v1, v2, Lcom/baidu/location/T$a;->do:Lcom/baidu/location/LocationClientOption;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "location_change_notify"

    iget-object v5, v2, Lcom/baidu/location/T$a;->do:Lcom/baidu/location/LocationClientOption;

    iget-boolean v5, v5, Lcom/baidu/location/LocationClientOption;->goto:Z

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v1, Lcom/baidu/location/LocationClientOption;->goto:Z

    iget-object v1, v2, Lcom/baidu/location/T$a;->do:Lcom/baidu/location/LocationClientOption;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "priority"

    iget-object v2, v2, Lcom/baidu/location/T$a;->do:Lcom/baidu/location/LocationClientOption;

    iget v2, v2, Lcom/baidu/location/LocationClientOption;->h:I

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/baidu/location/LocationClientOption;->h:I

    invoke-direct {p0}, Lcom/baidu/location/T;->a()V

    goto/16 :goto_0

    :cond_3
    invoke-static {}, Lcom/baidu/location/R;->for()Lcom/baidu/location/R;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/location/R;->if()V

    goto/16 :goto_1

    :cond_4
    iget-object v1, v2, Lcom/baidu/location/T$a;->do:Lcom/baidu/location/LocationClientOption;

    iget-object v1, v1, Lcom/baidu/location/LocationClientOption;->do:Ljava/lang/String;

    goto :goto_2

    :cond_5
    iget-object v1, v2, Lcom/baidu/location/T$a;->do:Lcom/baidu/location/LocationClientOption;

    iget-object v1, v1, Lcom/baidu/location/LocationClientOption;->else:Ljava/lang/String;

    goto :goto_3
.end method

.method public j()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/T;->Y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/T$a;

    invoke-virtual {v0}, Lcom/baidu/location/T$a;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/T;->Z:Z

    return v0
.end method

.method public n()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/T;->Y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/T$a;

    invoke-virtual {v0}, Lcom/baidu/location/T$a;->if()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public new(Landroid/os/Message;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/baidu/location/T$a;

    invoke-direct {v0, p0, p1}, Lcom/baidu/location/T$a;-><init>(Lcom/baidu/location/T;Landroid/os/Message;)V

    invoke-direct {p0, v0}, Lcom/baidu/location/T;->a(Lcom/baidu/location/T$a;)V

    invoke-direct {p0}, Lcom/baidu/location/T;->a()V

    goto :goto_0
.end method

.method public o()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/T;->Y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lcom/baidu/location/T;->a()V

    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v0, 0x100

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-object v0, p0, Lcom/baidu/location/T;->Y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "&prod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/baidu/location/i;->jy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/baidu/location/i;->ju:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/T;->Y:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/T$a;

    iget-object v2, v0, Lcom/baidu/location/T$a;->do:Lcom/baidu/location/LocationClientOption;

    iget-object v2, v2, Lcom/baidu/location/LocationClientOption;->if:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/baidu/location/T$a;->do:Lcom/baidu/location/LocationClientOption;

    iget-object v2, v2, Lcom/baidu/location/LocationClientOption;->if:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v2, v0, Lcom/baidu/location/T$a;->int:Ljava/lang/String;

    if-eqz v2, :cond_2

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, v0, Lcom/baidu/location/T$a;->int:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "|"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&prod="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
