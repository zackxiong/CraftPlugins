.class Lcom/alimama/mobile/d;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/alimama/mobile/b$a;


# instance fields
.field final synthetic a:Lcom/alimama/mobile/c;


# direct methods
.method constructor <init>(Lcom/alimama/mobile/c;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/alimama/mobile/d;->a:Lcom/alimama/mobile/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/alimama/mobile/csdk/umupdate/models/Promoter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lcom/alimama/mobile/d;->a:Lcom/alimama/mobile/c;

    iget-object v0, v0, Lcom/alimama/mobile/c;->a:Lcom/alimama/mobile/b$a;

    invoke-interface {v0, p1, p2}, Lcom/alimama/mobile/b$a;->a(ILjava/util/List;)V

    .line 151
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/alimama/mobile/d;->a:Lcom/alimama/mobile/c;

    iget-object v1, p0, Lcom/alimama/mobile/d;->a:Lcom/alimama/mobile/c;

    iget-boolean v1, v1, Lcom/alimama/mobile/c;->b:Z

    invoke-static {v0, v1}, Lcom/alimama/mobile/c;->a(Lcom/alimama/mobile/c;Z)V

    .line 154
    :cond_0
    return-void
.end method
