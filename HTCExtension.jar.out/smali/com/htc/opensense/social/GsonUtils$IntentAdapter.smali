.class final Lcom/htc/opensense/social/GsonUtils$IntentAdapter;
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
    name = "IntentAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/gson/InstanceCreator",
        "<",
        "Landroid/content/Intent;",
        ">;",
        "Lcom/htc/gson/JsonSerializer",
        "<",
        "Landroid/content/Intent;",
        ">;",
        "Lcom/htc/gson/JsonDeserializer",
        "<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# static fields
.field private static final ARG_ACTION:Ljava/lang/String; = "intent-action"

.field private static final ARG_COMPONENT:Ljava/lang/String; = "intent-component"

.field private static final ARG_DATA:Ljava/lang/String; = "intent-data"

.field private static final ARG_EXTRAS:Ljava/lang/String; = "intent-extras"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 188
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/opensense/social/GsonUtils$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/htc/opensense/social/GsonUtils$IntentAdapter;-><init>()V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/gson/JsonObject;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 188
    invoke-static {p0}, Lcom/htc/opensense/social/GsonUtils$IntentAdapter;->isIntent(Lcom/htc/gson/JsonObject;)Z

    move-result v0

    return v0
.end method

.method private static final isIntent(Lcom/htc/gson/JsonObject;)Z
    .locals 1
    .parameter "json"

    .prologue
    .line 198
    const-string v0, "intent-action"

    invoke-virtual {p0, v0}, Lcom/htc/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "intent-data"

    invoke-virtual {p0, v0}, Lcom/htc/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "intent-extras"

    invoke-virtual {p0, v0}, Lcom/htc/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "intent-component"

    invoke-virtual {p0, v0}, Lcom/htc/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public createInstance(Ljava/lang/reflect/Type;)Landroid/content/Intent;
    .locals 1
    .parameter "type"

    .prologue
    .line 208
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createInstance(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 188
    invoke-virtual {p0, p1}, Lcom/htc/opensense/social/GsonUtils$IntentAdapter;->createInstance(Ljava/lang/reflect/Type;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Lcom/htc/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/htc/gson/JsonDeserializationContext;)Landroid/content/Intent;
    .locals 8
    .parameter "json"
    .parameter "typeOfT"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 246
    invoke-virtual {p1}, Lcom/htc/gson/JsonElement;->getAsJsonObject()Lcom/htc/gson/JsonObject;

    move-result-object v4

    .line 247
    .local v4, myJson:Lcom/htc/gson/JsonObject;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 248
    .local v3, intent:Landroid/content/Intent;
    const-string v6, "intent-action"

    invoke-virtual {v4, v6}, Lcom/htc/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 249
    const-string v6, "intent-action"

    invoke-virtual {v4, v6}, Lcom/htc/gson/JsonObject;->getAsJsonPrimitive(Ljava/lang/String;)Lcom/htc/gson/JsonPrimitive;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    .end local v0           #action:Ljava/lang/String;
    :cond_0
    const-string v6, "intent-data"

    invoke-virtual {v4, v6}, Lcom/htc/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 256
    const-string v6, "intent-data"

    invoke-virtual {v4, v6}, Lcom/htc/gson/JsonObject;->get(Ljava/lang/String;)Lcom/htc/gson/JsonElement;

    move-result-object v6

    const-class v7, Landroid/net/Uri;

    invoke-interface {p3, v6, v7}, Lcom/htc/gson/JsonDeserializationContext;->deserialize(Lcom/htc/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 258
    .local v5, uri:Landroid/net/Uri;
    if-eqz v5, :cond_1

    .line 259
    invoke-virtual {v3, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 262
    .end local v5           #uri:Landroid/net/Uri;
    :cond_1
    const-string v6, "intent-extras"

    invoke-virtual {v4, v6}, Lcom/htc/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 263
    const-string v6, "intent-extras"

    invoke-virtual {v4, v6}, Lcom/htc/gson/JsonObject;->get(Ljava/lang/String;)Lcom/htc/gson/JsonElement;

    move-result-object v6

    const-class v7, Landroid/os/Bundle;

    invoke-interface {p3, v6, v7}, Lcom/htc/gson/JsonDeserializationContext;->deserialize(Lcom/htc/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 265
    .local v2, extras:Landroid/os/Bundle;
    if-eqz v2, :cond_2

    .line 266
    invoke-virtual {v3, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 269
    .end local v2           #extras:Landroid/os/Bundle;
    :cond_2
    const-string v6, "intent-component"

    invoke-virtual {v4, v6}, Lcom/htc/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 270
    const-string v6, "intent-component"

    invoke-virtual {v4, v6}, Lcom/htc/gson/JsonObject;->get(Ljava/lang/String;)Lcom/htc/gson/JsonElement;

    move-result-object v6

    const-class v7, Landroid/content/ComponentName;

    invoke-interface {p3, v6, v7}, Lcom/htc/gson/JsonDeserializationContext;->deserialize(Lcom/htc/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 272
    .local v1, component:Landroid/content/ComponentName;
    if-eqz v1, :cond_3

    .line 273
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 276
    .end local v1           #component:Landroid/content/ComponentName;
    :cond_3
    return-object v3
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
    .line 188
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/opensense/social/GsonUtils$IntentAdapter;->deserialize(Lcom/htc/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/htc/gson/JsonDeserializationContext;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Landroid/content/Intent;Ljava/lang/reflect/Type;Lcom/htc/gson/JsonSerializationContext;)Lcom/htc/gson/JsonElement;
    .locals 7
    .parameter "intent"
    .parameter "typeOfSrc"
    .parameter "context"

    .prologue
    .line 218
    new-instance v3, Lcom/htc/gson/JsonObject;

    invoke-direct {v3}, Lcom/htc/gson/JsonObject;-><init>()V

    .line 219
    .local v3, json:Lcom/htc/gson/JsonObject;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 221
    .local v4, uri:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 222
    .local v2, extras:Landroid/os/Bundle;
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 223
    .local v1, component:Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 224
    const-string v5, "intent-action"

    invoke-virtual {v3, v5, v0}, Lcom/htc/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :cond_0
    if-eqz v4, :cond_1

    .line 227
    const-string v5, "intent-data"

    const-class v6, Landroid/net/Uri;

    invoke-interface {p3, v4, v6}, Lcom/htc/gson/JsonSerializationContext;->serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/htc/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/htc/gson/JsonObject;->add(Ljava/lang/String;Lcom/htc/gson/JsonElement;)V

    .line 229
    :cond_1
    if-eqz v2, :cond_2

    .line 230
    const-string v5, "intent-extras"

    const-class v6, Landroid/os/Bundle;

    invoke-interface {p3, v2, v6}, Lcom/htc/gson/JsonSerializationContext;->serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/htc/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/htc/gson/JsonObject;->add(Ljava/lang/String;Lcom/htc/gson/JsonElement;)V

    .line 232
    :cond_2
    if-eqz v1, :cond_3

    .line 233
    const-string v5, "intent-component"

    const-class v6, Landroid/content/ComponentName;

    invoke-interface {p3, v1, v6}, Lcom/htc/gson/JsonSerializationContext;->serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/htc/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/htc/gson/JsonObject;->add(Ljava/lang/String;Lcom/htc/gson/JsonElement;)V

    .line 236
    :cond_3
    return-object v3
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/htc/gson/JsonSerializationContext;)Lcom/htc/gson/JsonElement;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 188
    check-cast p1, Landroid/content/Intent;

    .end local p1
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/opensense/social/GsonUtils$IntentAdapter;->serialize(Landroid/content/Intent;Ljava/lang/reflect/Type;Lcom/htc/gson/JsonSerializationContext;)Lcom/htc/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method
