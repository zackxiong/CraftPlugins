.class Lorg/a/a/b/m$f;
.super Lorg/a/a/b/l;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/a/a/b/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field f:I

.field private final g:Lorg/a/a/b/m;


# direct methods
.method constructor <init>(Lorg/a/a/b/m;Lorg/a/a/b/e;I)V
    .locals 0

    .prologue
    .line 477
    invoke-direct {p0, p2}, Lorg/a/a/b/l;-><init>(Lorg/a/a/b/e;)V

    .line 476
    iput-object p1, p0, Lorg/a/a/b/m$f;->g:Lorg/a/a/b/m;

    .line 478
    iput p3, p0, Lorg/a/a/b/m$f;->f:I

    .line 479
    return-void
.end method


# virtual methods
.method public a(Lorg/a/a/d/j;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 483
    invoke-virtual {p1}, Lorg/a/a/d/j;->a()Lorg/a/a/d/g;

    move-result-object v0

    .line 484
    iget v1, p0, Lorg/a/a/b/m$f;->f:I

    packed-switch v1, :pswitch_data_0

    .line 493
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 486
    :pswitch_1
    iget-object v0, v0, Lorg/a/a/d/g;->e:Ljava/lang/String;

    goto :goto_0

    .line 488
    :pswitch_2
    invoke-virtual {v0}, Lorg/a/a/d/g;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 490
    :pswitch_3
    invoke-virtual {v0}, Lorg/a/a/d/g;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 492
    :pswitch_4
    invoke-virtual {v0}, Lorg/a/a/d/g;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 484
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
