.class public Lcom/yf/smart/weloopx/event/SyncDataExitEvent;
.super Lcom/yf/lib/b/a;
.source "ProGuard"


# instance fields
.field public final index:I

.field public final msg:Ljava/lang/String;

.field public final titleId:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/yf/lib/b/a;-><init>()V

    .line 14
    iput p1, p0, Lcom/yf/smart/weloopx/event/SyncDataExitEvent;->index:I

    .line 15
    iput p2, p0, Lcom/yf/smart/weloopx/event/SyncDataExitEvent;->titleId:I

    .line 16
    iput-object p3, p0, Lcom/yf/smart/weloopx/event/SyncDataExitEvent;->msg:Ljava/lang/String;

    .line 17
    return-void
.end method
