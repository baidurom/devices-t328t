.class final Lcom/htc/opensense/social/GsonUtils$ComponentNameAdapter;
.super Ljava/lang/Object;
.source "GsonUtils.java"

# interfaces
.implements Lcom/htc/gson/JsonSerializer;
.implements Lcom/htc/gson/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/social/GsonUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ComponentNameAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/gson/JsonSerializer",
        "<",
        "Landroid/content/ComponentName;",
        ">;",
        "Lcom/htc/gson/JsonDeserializer",
        "<",
        "Landroid/content/ComponentName;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/opensense/social/GsonUtils$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/htc/opensense/social/GsonUtils$ComponentNameAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/htc/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/htc/gson/JsonDeserializationContext;)Landroid/content/ComponentName;
    .locals 5
    .parameter "json"
    .parameter "typeOfT"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-virtual {p1}, Lcom/htc/gson/JsonElement;->getAsJsonArray()Lcom/htc/gson/JsonArray;

    move-result-object v2

    .line 67
    .local v2, ja:Lcom/htc/gson/JsonArray;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/htc/gson/JsonArray;->get(I)Lcom/htc/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    .line 69
    .local v3, packageName:Ljava/lang/String;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/htc/gson/JsonArray;->get(I)Lcom/htc/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, className:Ljava/lang/String;
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .local v1, cname:Landroid/content/ComponentName;
    return-object v1
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
    .line 41
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/opensense/social/GsonUtils$ComponentNameAdapter;->deserialize(Lcom/htc/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/htc/gson/JsonDeserializationContext;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Landroid/content/ComponentName;Ljava/lang/reflect/Type;Lcom/htc/gson/JsonSerializationContext;)Lcom/htc/gson/JsonElement;
    .locals 4
    .parameter "name"
    .parameter "typeOfSrc"
    .parameter "context"

    .prologue
    .line 51
    new-instance v1, Lcom/htc/gson/JsonArray;

    invoke-direct {v1}, Lcom/htc/gson/JsonArray;-><init>()V

    .line 52
    .local v1, json:Lcom/htc/gson/JsonArray;
    new-instance v2, Lcom/htc/gson/JsonPrimitive;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/htc/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    .line 53
    .local v2, packageName:Lcom/htc/gson/JsonPrimitive;
    new-instance v0, Lcom/htc/gson/JsonPrimitive;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/htc/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    .line 54
    .local v0, className:Lcom/htc/gson/JsonPrimitive;
    invoke-virtual {v1, v2}, Lcom/htc/gson/JsonArray;->add(Lcom/htc/gson/JsonElement;)V

    .line 55
    invoke-virtual {v1, v0}, Lcom/htc/gson/JsonArray;->add(Lcom/htc/gson/JsonElement;)V

    .line 56
    return-object v1
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/htc/gson/JsonSerializationContext;)Lcom/htc/gson/JsonElement;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 41
    check-cast p1, Landroid/content/ComponentName;

    .end local p1
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/opensense/social/GsonUtils$ComponentNameAdapter;->serialize(Landroid/content/ComponentName;Ljava/lang/reflect/Type;Lcom/htc/gson/JsonSerializationContext;)Lcom/htc/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method
