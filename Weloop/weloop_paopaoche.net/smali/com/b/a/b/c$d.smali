.class Lcom/b/a/b/c$d;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/b/a/b/c;

.field private final b:Ljava/io/InputStream;

.field private final c:Ljava/nio/charset/Charset;

.field private d:[B

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Lcom/b/a/b/c;Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 1096
    const/16 v0, 0x2000

    invoke-direct {p0, p1, p2, v0}, Lcom/b/a/b/c$d;-><init>(Lcom/b/a/b/c;Ljava/io/InputStream;I)V

    .line 1097
    return-void
.end method

.method public constructor <init>(Lcom/b/a/b/c;Ljava/io/InputStream;I)V
    .locals 2

    .prologue
    .line 1108
    iput-object p1, p0, Lcom/b/a/b/c$d;->a:Lcom/b/a/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1076
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/b/c$d;->c:Ljava/nio/charset/Charset;

    .line 1109
    if-nez p2, :cond_0

    .line 1110
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1112
    :cond_0
    if-gez p3, :cond_1

    .line 1113
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "capacity <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1116
    :cond_1
    iput-object p2, p0, Lcom/b/a/b/c$d;->b:Ljava/io/InputStream;

    .line 1117
    new-array v0, p3, [B

    iput-object v0, p0, Lcom/b/a/b/c$d;->d:[B

    .line 1118
    return-void
.end method

.method static synthetic a(Lcom/b/a/b/c$d;)Ljava/nio/charset/Charset;
    .locals 1

    .prologue
    .line 1071
    iget-object v0, p0, Lcom/b/a/b/c$d;->c:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method private b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1204
    iget-object v0, p0, Lcom/b/a/b/c$d;->b:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/b/a/b/c$d;->d:[B

    iget-object v2, p0, Lcom/b/a/b/c$d;->d:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 1205
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1206
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 1208
    :cond_0
    iput v3, p0, Lcom/b/a/b/c$d;->e:I

    .line 1209
    iput v0, p0, Lcom/b/a/b/c$d;->f:I

    .line 1210
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0xa

    .line 1145
    iget-object v3, p0, Lcom/b/a/b/c$d;->b:Ljava/io/InputStream;

    monitor-enter v3

    .line 1146
    :try_start_0
    iget-object v0, p0, Lcom/b/a/b/c$d;->d:[B

    if-nez v0, :cond_0

    .line 1147
    new-instance v0, Ljava/io/IOException;

    const-string v1, "LineReader is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1196
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1153
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/b/a/b/c$d;->e:I

    iget v1, p0, Lcom/b/a/b/c$d;->f:I

    if-lt v0, v1, :cond_1

    .line 1154
    invoke-direct {p0}, Lcom/b/a/b/c$d;->b()V

    .line 1157
    :cond_1
    iget v2, p0, Lcom/b/a/b/c$d;->e:I

    :goto_0
    iget v0, p0, Lcom/b/a/b/c$d;->f:I

    if-eq v2, v0, :cond_4

    .line 1158
    iget-object v0, p0, Lcom/b/a/b/c$d;->d:[B

    aget-byte v0, v0, v2

    if-ne v0, v6, :cond_3

    .line 1159
    iget v0, p0, Lcom/b/a/b/c$d;->e:I

    if-eq v2, v0, :cond_2

    iget-object v0, p0, Lcom/b/a/b/c$d;->d:[B

    add-int/lit8 v1, v2, -0x1

    aget-byte v0, v0, v1

    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    add-int/lit8 v0, v2, -0x1

    move v1, v0

    .line 1160
    :goto_1
    new-instance v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/b/a/b/c$d;->d:[B

    iget v5, p0, Lcom/b/a/b/c$d;->e:I

    iget v6, p0, Lcom/b/a/b/c$d;->e:I

    sub-int/2addr v1, v6

    iget-object v6, p0, Lcom/b/a/b/c$d;->c:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v4, v5, v1, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 1161
    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/b/a/b/c$d;->e:I

    .line 1162
    monitor-exit v3

    .line 1192
    :goto_2
    return-object v0

    :cond_2
    move v1, v2

    .line 1159
    goto :goto_1

    .line 1157
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1167
    :cond_4
    new-instance v1, Lcom/b/a/b/f;

    iget v0, p0, Lcom/b/a/b/c$d;->f:I

    iget v2, p0, Lcom/b/a/b/c$d;->e:I

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x50

    invoke-direct {v1, p0, v0}, Lcom/b/a/b/f;-><init>(Lcom/b/a/b/c$d;I)V

    .line 1180
    :cond_5
    iget-object v0, p0, Lcom/b/a/b/c$d;->d:[B

    iget v2, p0, Lcom/b/a/b/c$d;->e:I

    iget v4, p0, Lcom/b/a/b/c$d;->f:I

    iget v5, p0, Lcom/b/a/b/c$d;->e:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v0, v2, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1182
    const/4 v0, -0x1

    iput v0, p0, Lcom/b/a/b/c$d;->f:I

    .line 1183
    invoke-direct {p0}, Lcom/b/a/b/c$d;->b()V

    .line 1185
    iget v0, p0, Lcom/b/a/b/c$d;->e:I

    :goto_3
    iget v2, p0, Lcom/b/a/b/c$d;->f:I

    if-eq v0, v2, :cond_5

    .line 1186
    iget-object v2, p0, Lcom/b/a/b/c$d;->d:[B

    aget-byte v2, v2, v0

    if-ne v2, v6, :cond_7

    .line 1187
    iget v2, p0, Lcom/b/a/b/c$d;->e:I

    if-eq v0, v2, :cond_6

    .line 1188
    iget-object v2, p0, Lcom/b/a/b/c$d;->d:[B

    iget v4, p0, Lcom/b/a/b/c$d;->e:I

    iget v5, p0, Lcom/b/a/b/c$d;->e:I

    sub-int v5, v0, v5

    invoke-virtual {v1, v2, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1190
    :cond_6
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 1191
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/b/a/b/c$d;->e:I

    .line 1192
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1185
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public close()V
    .locals 2

    .prologue
    .line 1128
    iget-object v1, p0, Lcom/b/a/b/c$d;->b:Ljava/io/InputStream;

    monitor-enter v1

    .line 1129
    :try_start_0
    iget-object v0, p0, Lcom/b/a/b/c$d;->d:[B

    if-eqz v0, :cond_0

    .line 1130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/b/c$d;->d:[B

    .line 1131
    iget-object v0, p0, Lcom/b/a/b/c$d;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 1133
    :cond_0
    monitor-exit v1

    .line 1134
    return-void

    .line 1133
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
