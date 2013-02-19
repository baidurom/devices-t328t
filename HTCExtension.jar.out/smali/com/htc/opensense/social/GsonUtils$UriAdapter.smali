.class final Lcom/htc/opensense/social/GsonUtils$UriAdapter;
.super Ljava/lang/Object;
.source "GsonUtils.java"

# interfaces
.implements Lcom/htc/gson/InstanceCreator;
.implements Lcom/htc/gson/JsonSerializer;
.implements Lcom/htc/gson/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/social/GsonUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UriAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/gson/InstanceCreator",
        "<",
        "Landroid/net/Uri;",
        ">;",
        "Lcom/htc/gson/JsonSerializer",
        "<",
        "Landroid/net/Uri;",
        ">;",
        "Lcom/htc/gson/JsonDeserializer",
        "<",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 154
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/opensense/social/GsonUtils$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/htc/opensense/social/GsonUtils$UriAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public createInstance(Ljava/lang/reflect/Type;)Landroid/net/Uri;
    .locals 1
    .parameter "type"

    .prologue
    .line 163
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    return-object v0
.end method

.method public bridge synthetic createInstance(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 154
    invoke-virtual {p0, p1}, Lcom/htc/opensense/social/GsonUtils$UriAdapter;->createInstance(Ljava/lang/reflect/Type;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Lcom/htc/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/htc/gson/JsonDeserializationContext;)Landroid/net/Uri;
    .locals 1
    .parameter "json"
    .parameter "typeOfT"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 183
    invoke-virtual {p1}, Lcom/htc/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic deserialize(Lcom/htc/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/htc/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 154
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/opensense/social/GsonUtils$UriAdapter;->deserialize(Lcom/htc/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/htc/gson/JsonDeserializationContext;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Landroid/net/Uri;Ljava/lang/reflect/Type;Lcom/htc/gson/JsonSerializationContext;)Lcom/htc/gson/JsonElement;
    .locals 2
    .parameter "uri"
    .parameter "typeOfSrc"
    .parameter "context"

    .prologue
    .line 173
    new-instance v0, Lcom/htc/gson/JsonPrimitive;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/htc/gson/JsonSerializationContext;)Lcom/htc/gson/JsonElement;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 154
    check-cast p1, Landroid/net/Uri;

    .end local p1
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/opensense/social/GsonUtils$UriAdapter;->serialize(Landroid/net/Uri;Ljava/lang/reflect/Type;Lcom/htc/gson/JsonSerializationContext;)Lcom/htc/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method
