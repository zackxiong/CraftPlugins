.class public Lcom/yf/lib/bt/server/ancs/AncsEvent;
.super Lcom/yf/lib/b/a;
.source "ProGuard"


# instance fields
.field public final content:Lcom/yf/lib/bt/server/ancs/NotificationContent;

.field public final flag:B


# direct methods
.method public constructor <init>(Lcom/yf/lib/bt/server/ancs/NotificationContent;B)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/yf/lib/b/a;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/yf/lib/bt/server/ancs/AncsEvent;->content:Lcom/yf/lib/bt/server/ancs/NotificationContent;

    .line 14
    iput-byte p2, p0, Lcom/yf/lib/bt/server/ancs/AncsEvent;->flag:B

    .line 15
    return-void
.end method
