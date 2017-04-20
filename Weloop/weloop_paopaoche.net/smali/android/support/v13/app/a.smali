.class public Landroid/support/v13/app/a;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v13/app/a$d;,
        Landroid/support/v13/app/a$c;,
        Landroid/support/v13/app/a$a;,
        Landroid/support/v13/app/a$b;
    }
.end annotation


# static fields
.field static final a:Landroid/support/v13/app/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    .line 55
    new-instance v0, Landroid/support/v13/app/a$d;

    invoke-direct {v0}, Landroid/support/v13/app/a$d;-><init>()V

    sput-object v0, Landroid/support/v13/app/a;->a:Landroid/support/v13/app/a$b;

    .line 61
    :goto_0
    return-void

    .line 56
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 57
    new-instance v0, Landroid/support/v13/app/a$c;

    invoke-direct {v0}, Landroid/support/v13/app/a$c;-><init>()V

    sput-object v0, Landroid/support/v13/app/a;->a:Landroid/support/v13/app/a$b;

    goto :goto_0

    .line 59
    :cond_1
    new-instance v0, Landroid/support/v13/app/a$a;

    invoke-direct {v0}, Landroid/support/v13/app/a$a;-><init>()V

    sput-object v0, Landroid/support/v13/app/a;->a:Landroid/support/v13/app/a$b;

    goto :goto_0
.end method

.method public static a(Landroid/app/Fragment;Z)V
    .locals 1

    .prologue
    .line 68
    sget-object v0, Landroid/support/v13/app/a;->a:Landroid/support/v13/app/a$b;

    invoke-interface {v0, p0, p1}, Landroid/support/v13/app/a$b;->a(Landroid/app/Fragment;Z)V

    .line 69
    return-void
.end method

.method public static b(Landroid/app/Fragment;Z)V
    .locals 1

    .prologue
    .line 76
    sget-object v0, Landroid/support/v13/app/a;->a:Landroid/support/v13/app/a$b;

    invoke-interface {v0, p0, p1}, Landroid/support/v13/app/a$b;->b(Landroid/app/Fragment;Z)V

    .line 77
    return-void
.end method
