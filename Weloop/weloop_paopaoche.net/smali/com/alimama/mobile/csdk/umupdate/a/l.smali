.class public Lcom/alimama/mobile/csdk/umupdate/a/l;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/l;->b:Landroid/content/res/Resources;

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/l;->a:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public a()I
    .locals 4

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/l;->b:Landroid/content/res/Resources;

    const-string v1, "tb_munion_adview"

    const-string v2, "layout"

    iget-object v3, p0, Lcom/alimama/mobile/csdk/umupdate/a/l;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public b()I
    .locals 4

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/l;->b:Landroid/content/res/Resources;

    const-string v1, "tb_munion_aditem"

    const-string v2, "layout"

    iget-object v3, p0, Lcom/alimama/mobile/csdk/umupdate/a/l;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 4

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/l;->b:Landroid/content/res/Resources;

    const-string v1, "tb_munion_tip_download_prefix"

    const-string v2, "string"

    iget-object v3, p0, Lcom/alimama/mobile/csdk/umupdate/a/l;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 30
    iget-object v1, p0, Lcom/alimama/mobile/csdk/umupdate/a/l;->b:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .locals 4

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/l;->b:Landroid/content/res/Resources;

    const-string v1, "progress_frame"

    const-string v2, "id"

    iget-object v3, p0, Lcom/alimama/mobile/csdk/umupdate/a/l;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public e()I
    .locals 4

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/l;->b:Landroid/content/res/Resources;

    const-string v1, "promoter_frame"

    const-string v2, "id"

    iget-object v3, p0, Lcom/alimama/mobile/csdk/umupdate/a/l;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public f()I
    .locals 4

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/l;->b:Landroid/content/res/Resources;

    const-string v1, "status_msg"

    const-string v2, "id"

    iget-object v3, p0, Lcom/alimama/mobile/csdk/umupdate/a/l;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public g()I
    .locals 4

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/l;->b:Landroid/content/res/Resources;

    const-string v1, "loading"

    const-string v2, "id"

    iget-object v3, p0, Lcom/alimama/mobile/csdk/umupdate/a/l;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public h()I
    .locals 4

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/l;->b:Landroid/content/res/Resources;

    const-string v1, "ad_image"

    const-string v2, "id"

    iget-object v3, p0, Lcom/alimama/mobile/csdk/umupdate/a/l;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
