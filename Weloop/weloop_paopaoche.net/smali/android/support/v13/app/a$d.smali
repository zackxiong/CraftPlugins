.class Landroid/support/v13/app/a$d;
.super Landroid/support/v13/app/a$c;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v13/app/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/support/v13/app/a$c;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/app/Fragment;Z)V
    .locals 0

    .prologue
    .line 48
    invoke-static {p1, p2}, Landroid/support/v13/app/c;->a(Landroid/app/Fragment;Z)V

    .line 49
    return-void
.end method
