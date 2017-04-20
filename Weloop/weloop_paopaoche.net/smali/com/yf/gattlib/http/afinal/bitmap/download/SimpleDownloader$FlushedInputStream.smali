.class public Lcom/yf/gattlib/http/afinal/bitmap/download/SimpleDownloader$FlushedInputStream;
.super Ljava/io/FilterInputStream;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/gattlib/http/afinal/bitmap/download/SimpleDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FlushedInputStream"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yf/gattlib/http/afinal/bitmap/download/SimpleDownloader;


# direct methods
.method public constructor <init>(Lcom/yf/gattlib/http/afinal/bitmap/download/SimpleDownloader;Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/yf/gattlib/http/afinal/bitmap/download/SimpleDownloader$FlushedInputStream;->this$0:Lcom/yf/gattlib/http/afinal/bitmap/download/SimpleDownloader;

    .line 133
    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 134
    return-void
.end method


# virtual methods
.method public skip(J)J
    .locals 9

    .prologue
    const-wide/16 v4, 0x0

    .line 138
    move-wide v2, v4

    .line 139
    :goto_0
    cmp-long v0, v2, p1

    if-gez v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/download/SimpleDownloader$FlushedInputStream;->in:Ljava/io/InputStream;

    sub-long v6, p1, v2

    invoke-virtual {v0, v6, v7}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 141
    cmp-long v6, v0, v4

    if-nez v6, :cond_2

    .line 142
    invoke-virtual {p0}, Lcom/yf/gattlib/http/afinal/bitmap/download/SimpleDownloader$FlushedInputStream;->read()I

    move-result v0

    .line 143
    if-gez v0, :cond_1

    .line 151
    :cond_0
    return-wide v2

    .line 146
    :cond_1
    const-wide/16 v0, 0x1

    .line 149
    :cond_2
    add-long/2addr v0, v2

    move-wide v2, v0

    .line 150
    goto :goto_0
.end method
