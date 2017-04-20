.class public Lorg/a/a/a/a;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field static c:Ljava/lang/Class;

.field static d:Ljava/lang/Class;


# instance fields
.field protected a:Ljava/lang/Object;

.field protected b:[Ljava/beans/PropertyDescriptor;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lorg/a/a/a/a;->a:Ljava/lang/Object;

    .line 66
    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/util/Properties;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 96
    new-instance v0, Lorg/a/a/a/a;

    invoke-direct {v0, p0}, Lorg/a/a/a/a;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, p2}, Lorg/a/a/a/a;->a(Ljava/util/Properties;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method static b(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    .prologue
    .line 222
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Ljava/beans/PropertyDescriptor;
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lorg/a/a/a/a;->b:[Ljava/beans/PropertyDescriptor;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/a/a/a/a;->a()V

    .line 245
    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/a/a/a/a;->b:[Ljava/beans/PropertyDescriptor;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 246
    iget-object v1, p0, Lorg/a/a/a/a;->b:[Ljava/beans/PropertyDescriptor;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/beans/FeatureDescriptor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 247
    iget-object v1, p0, Lorg/a/a/a/a;->b:[Ljava/beans/PropertyDescriptor;

    aget-object v0, v1, v0

    .line 250
    :goto_1
    return-object v0

    .line 245
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 250
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 218
    if-nez p1, :cond_1

    move-object p1, v1

    .line 237
    :cond_0
    :goto_0
    return-object p1

    .line 221
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 222
    sget-object v0, Lorg/a/a/a/a;->c:Ljava/lang/Class;

    if-nez v0, :cond_2

    const-string v0, "java.lang.String"

    invoke-static {v0}, Lorg/a/a/a/a;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/a/a/a/a;->c:Ljava/lang/Class;

    :goto_1
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 225
    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, v2}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 222
    :cond_2
    sget-object v0, Lorg/a/a/a/a;->c:Ljava/lang/Class;

    goto :goto_1

    .line 226
    :cond_3
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 227
    new-instance p1, Ljava/lang/Long;

    invoke-direct {p1, v2}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 228
    :cond_4
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 229
    const-string v0, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 230
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 231
    :cond_5
    const-string v0, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 232
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 234
    :cond_6
    sget-object v0, Lorg/a/a/a/a;->d:Ljava/lang/Class;

    if-nez v0, :cond_7

    const-string v0, "org.a.a.o"

    invoke-static {v0}, Lorg/a/a/a/a;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/a/a/a/a;->d:Ljava/lang/Class;

    :goto_2
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 235
    sget-object v0, Lorg/a/a/i;->f:Lorg/a/a/i;

    invoke-static {v2, v0}, Lorg/a/a/b/k;->a(Ljava/lang/String;Lorg/a/a/i;)Lorg/a/a/i;

    move-result-object p1

    goto :goto_0

    .line 234
    :cond_7
    sget-object v0, Lorg/a/a/a/a;->d:Ljava/lang/Class;

    goto :goto_2

    :cond_8
    move-object p1, v1

    .line 237
    goto :goto_0
.end method

.method protected a()V
    .locals 3

    .prologue
    .line 75
    :try_start_0
    iget-object v0, p0, Lorg/a/a/a/a;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ljava/beans/Introspector;->getBeanInfo(Ljava/lang/Class;)Ljava/beans/BeanInfo;

    move-result-object v0

    .line 76
    invoke-interface {v0}, Ljava/beans/BeanInfo;->getPropertyDescriptors()[Ljava/beans/PropertyDescriptor;

    move-result-object v0

    iput-object v0, p0, Lorg/a/a/a/a;->b:[Ljava/beans/PropertyDescriptor;
    :try_end_0
    .catch Ljava/beans/IntrospectionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Failed to introspect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/a/a/a/a;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/a/a/b/h;->b(Ljava/lang/String;)V

    .line 79
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/beans/PropertyDescriptor;

    iput-object v0, p0, Lorg/a/a/a/a;->b:[Ljava/beans/PropertyDescriptor;

    goto :goto_0
.end method

.method public a(Ljava/beans/PropertyDescriptor;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 183
    invoke-virtual {p1}, Ljava/beans/PropertyDescriptor;->getWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    .line 184
    if-nez v0, :cond_0

    .line 185
    new-instance v0, Lorg/a/a/a/b;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "No setter for property ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/a/a/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_0
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 188
    array-length v2, v1

    if-eq v2, v3, :cond_1

    .line 189
    new-instance v0, Lorg/a/a/a/b;

    const-string v1, "#params for setter != 1"

    invoke-direct {v0, v1}, Lorg/a/a/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_1
    const/4 v2, 0x0

    :try_start_0
    aget-object v2, v1, v2

    invoke-virtual {p0, p3, v2}, Lorg/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 199
    if-nez v2, :cond_2

    .line 200
    new-instance v0, Lorg/a/a/a/b;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Conversion to type ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    aget-object v1, v1, v5

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "] failed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/a/a/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :catch_0
    move-exception v0

    .line 196
    new-instance v2, Lorg/a/a/a/b;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Conversion to type ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    aget-object v1, v1, v5

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "] failed. Reason: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/a/a/a/b;-><init>(Ljava/lang/String;)V

    throw v2

    .line 203
    :cond_2
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Setting property ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "] to ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "]."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/a/a/b/h;->a(Ljava/lang/String;)V

    .line 205
    :try_start_1
    iget-object v1, p0, Lorg/a/a/a/a;->a:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 209
    return-void

    .line 206
    :catch_1
    move-exception v0

    .line 207
    new-instance v1, Lorg/a/a/a/b;

    invoke-direct {v1, v0}, Lorg/a/a/a/b;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 152
    if-nez p2, :cond_0

    .line 170
    :goto_0
    return-void

    .line 154
    :cond_0
    invoke-static {p1}, Ljava/beans/Introspector;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-virtual {p0, v0}, Lorg/a/a/a/a;->a(Ljava/lang/String;)Ljava/beans/PropertyDescriptor;

    move-result-object v1

    .line 159
    if-nez v1, :cond_1

    .line 160
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "No such property ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "] in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/a/a/a/a;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/a/a/b/h;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 164
    :cond_1
    :try_start_0
    invoke-virtual {p0, v1, v0, p2}, Lorg/a/a/a/a;->a(Ljava/beans/PropertyDescriptor;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/a/a/a/b; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 165
    :catch_0
    move-exception v1

    .line 166
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Failed to set property ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "] to value \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "\". "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v1, Lorg/a/a/a/b;->a:Ljava/lang/Throwable;

    invoke-static {v0, v1}, Lorg/a/a/b/h;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Ljava/util/Properties;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 108
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 110
    invoke-virtual {p1}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 111
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 114
    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 118
    const/16 v3, 0x2e

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-gtz v3, :cond_0

    .line 124
    invoke-static {v0, p1}, Lorg/a/a/b/k;->a(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v3

    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 126
    const-string v4, "layout"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/a/a/a/a;->a:Ljava/lang/Object;

    instance-of v4, v4, Lorg/a/a/a;

    if-nez v4, :cond_0

    .line 129
    :cond_1
    invoke-virtual {p0, v0, v3}, Lorg/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 132
    :cond_2
    invoke-virtual {p0}, Lorg/a/a/a/a;->b()V

    .line 133
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lorg/a/a/a/a;->a:Ljava/lang/Object;

    instance-of v0, v0, Lorg/a/a/d/l;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lorg/a/a/a/a;->a:Ljava/lang/Object;

    check-cast v0, Lorg/a/a/d/l;

    invoke-interface {v0}, Lorg/a/a/d/l;->e()V

    .line 258
    :cond_0
    return-void
.end method
