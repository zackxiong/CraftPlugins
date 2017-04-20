.class public Lorg/a/a/d/g;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static f:Z

.field private static g:Ljava/io/StringWriter;

.field private static h:Ljava/io/PrintWriter;


# instance fields
.field transient a:Ljava/lang/String;

.field transient b:Ljava/lang/String;

.field transient c:Ljava/lang/String;

.field transient d:Ljava/lang/String;

.field public e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    sput-object v0, Lorg/a/a/d/g;->g:Ljava/io/StringWriter;

    .line 56
    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Lorg/a/a/d/g;->g:Ljava/io/StringWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    sput-object v0, Lorg/a/a/d/g;->h:Ljava/io/PrintWriter;

    .line 68
    const/4 v0, 0x0

    sput-boolean v0, Lorg/a/a/d/g;->f:Z

    .line 71
    :try_start_0
    const-string v0, "com.ibm.uvm.tools.DebugSupport"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 72
    const/4 v0, 0x1

    sput-boolean v0, Lorg/a/a/d/g;->f:Z

    .line 73
    const-string v0, "Detected IBM VisualAge environment."

    invoke-static {v0}, Lorg/a/a/b/h;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    if-nez p1, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    sget-object v1, Lorg/a/a/d/g;->g:Ljava/io/StringWriter;

    monitor-enter v1

    .line 105
    :try_start_0
    sget-object v0, Lorg/a/a/d/g;->h:Ljava/io/PrintWriter;

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 106
    sget-object v0, Lorg/a/a/d/g;->g:Ljava/io/StringWriter;

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    .line 107
    sget-object v0, Lorg/a/a/d/g;->g:Ljava/io/StringWriter;

    invoke-virtual {v0}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 108
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    invoke-virtual {v2, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 120
    if-eq v0, v4, :cond_0

    .line 124
    sget-object v1, Lorg/a/a/h;->a:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 125
    if-eq v0, v4, :cond_0

    .line 127
    sget v1, Lorg/a/a/h;->b:I

    add-int/2addr v0, v1

    .line 130
    sget-object v1, Lorg/a/a/h;->a:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 131
    if-eq v1, v4, :cond_0

    .line 136
    sget-boolean v3, Lorg/a/a/d/g;->f:Z

    if-nez v3, :cond_2

    .line 138
    const-string v0, "at "

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    .line 139
    if-eq v0, v4, :cond_0

    .line 142
    add-int/lit8 v0, v0, 0x3

    .line 145
    :cond_2
    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/a/a/d/g;->e:Ljava/lang/String;

    goto :goto_0

    .line 108
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 154
    iget-object v0, p0, Lorg/a/a/d/g;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "?"

    .line 184
    :goto_0
    return-object v0

    .line 155
    :cond_0
    iget-object v0, p0, Lorg/a/a/d/g;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 158
    iget-object v0, p0, Lorg/a/a/d/g;->e:Ljava/lang/String;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 159
    if-ne v0, v3, :cond_2

    .line 160
    const-string v0, "?"

    iput-object v0, p0, Lorg/a/a/d/g;->c:Ljava/lang/String;

    .line 184
    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/a/a/d/g;->c:Ljava/lang/String;

    goto :goto_0

    .line 162
    :cond_2
    iget-object v1, p0, Lorg/a/a/d/g;->e:Ljava/lang/String;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    .line 173
    const/4 v0, 0x0

    .line 174
    sget-boolean v2, Lorg/a/a/d/g;->f:Z

    if-eqz v2, :cond_3

    .line 175
    iget-object v0, p0, Lorg/a/a/d/g;->e:Ljava/lang/String;

    const/16 v2, 0x20

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 178
    :cond_3
    if-ne v1, v3, :cond_4

    .line 179
    const-string v0, "?"

    iput-object v0, p0, Lorg/a/a/d/g;->c:Ljava/lang/String;

    goto :goto_1

    .line 181
    :cond_4
    iget-object v2, p0, Lorg/a/a/d/g;->e:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/a/a/d/g;->c:Ljava/lang/String;

    goto :goto_1
.end method

.method public b()Ljava/lang/String;
    .locals 4

    .prologue
    .line 194
    iget-object v0, p0, Lorg/a/a/d/g;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "?"

    .line 205
    :goto_0
    return-object v0

    .line 196
    :cond_0
    iget-object v0, p0, Lorg/a/a/d/g;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 197
    iget-object v0, p0, Lorg/a/a/d/g;->e:Ljava/lang/String;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 198
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 199
    const-string v0, "?"

    iput-object v0, p0, Lorg/a/a/d/g;->b:Ljava/lang/String;

    .line 205
    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/a/a/d/g;->b:Ljava/lang/String;

    goto :goto_0

    .line 201
    :cond_2
    iget-object v1, p0, Lorg/a/a/d/g;->e:Ljava/lang/String;

    const/16 v2, 0x28

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    .line 202
    iget-object v2, p0, Lorg/a/a/d/g;->e:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/a/a/d/g;->b:Ljava/lang/String;

    goto :goto_1
.end method

.method public c()Ljava/lang/String;
    .locals 4

    .prologue
    .line 215
    iget-object v0, p0, Lorg/a/a/d/g;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "?"

    .line 225
    :goto_0
    return-object v0

    .line 217
    :cond_0
    iget-object v0, p0, Lorg/a/a/d/g;->a:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 218
    iget-object v0, p0, Lorg/a/a/d/g;->e:Ljava/lang/String;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 219
    iget-object v1, p0, Lorg/a/a/d/g;->e:Ljava/lang/String;

    const/16 v2, 0x3a

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    .line 220
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 221
    const-string v0, "?"

    iput-object v0, p0, Lorg/a/a/d/g;->a:Ljava/lang/String;

    .line 225
    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/a/a/d/g;->a:Ljava/lang/String;

    goto :goto_0

    .line 223
    :cond_2
    iget-object v2, p0, Lorg/a/a/d/g;->e:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/a/a/d/g;->a:Ljava/lang/String;

    goto :goto_1
.end method

.method public d()Ljava/lang/String;
    .locals 3

    .prologue
    .line 233
    iget-object v0, p0, Lorg/a/a/d/g;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "?"

    .line 242
    :goto_0
    return-object v0

    .line 234
    :cond_0
    iget-object v0, p0, Lorg/a/a/d/g;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 235
    iget-object v0, p0, Lorg/a/a/d/g;->e:Ljava/lang/String;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 236
    iget-object v1, p0, Lorg/a/a/d/g;->e:Ljava/lang/String;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    .line 237
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 238
    const-string v0, "?"

    iput-object v0, p0, Lorg/a/a/d/g;->d:Ljava/lang/String;

    .line 242
    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/a/a/d/g;->d:Ljava/lang/String;

    goto :goto_0

    .line 240
    :cond_2
    iget-object v2, p0, Lorg/a/a/d/g;->e:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/a/a/d/g;->d:Ljava/lang/String;

    goto :goto_1
.end method
