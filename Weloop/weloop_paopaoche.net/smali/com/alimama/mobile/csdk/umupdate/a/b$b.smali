.class Lcom/alimama/mobile/csdk/umupdate/a/b$b;
.super Landroid/os/Handler;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alimama/mobile/csdk/umupdate/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 651
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alimama/mobile/csdk/umupdate/a/c;)V
    .locals 0

    .prologue
    .line 651
    invoke-direct {p0}, Lcom/alimama/mobile/csdk/umupdate/a/b$b;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 655
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/alimama/mobile/csdk/umupdate/a/b$a;

    .line 656
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 665
    :goto_0
    return-void

    .line 659
    :pswitch_0
    iget-object v1, v0, Lcom/alimama/mobile/csdk/umupdate/a/b$a;->a:Lcom/alimama/mobile/csdk/umupdate/a/b;

    iget-object v0, v0, Lcom/alimama/mobile/csdk/umupdate/a/b$a;->b:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-static {v1, v0}, Lcom/alimama/mobile/csdk/umupdate/a/b;->c(Lcom/alimama/mobile/csdk/umupdate/a/b;Ljava/lang/Object;)V

    goto :goto_0

    .line 662
    :pswitch_1
    iget-object v1, v0, Lcom/alimama/mobile/csdk/umupdate/a/b$a;->a:Lcom/alimama/mobile/csdk/umupdate/a/b;

    iget-object v0, v0, Lcom/alimama/mobile/csdk/umupdate/a/b$a;->b:[Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/alimama/mobile/csdk/umupdate/a/b;->b([Ljava/lang/Object;)V

    goto :goto_0

    .line 656
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
