.class final Lcom/htc/opensense/social/GsonUtils$BundleAdapter;
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
    name = "BundleAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/gson/InstanceCreator",
        "<",
        "Landroid/os/Bundle;",
        ">;",
        "Lcom/htc/gson/JsonSerializer",
        "<",
        "Landroid/os/Bundle;",
        ">;",
        "Lcom/htc/gson/JsonDeserializer",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/opensense/social/GsonUtils$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/htc/opensense/social/GsonUtils$BundleAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public createInstance(Ljava/lang/reflect/Type;)Landroid/os/Bundle;
    .locals 1
    .parameter "type"

    .prologue
    .line 87
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createInstance(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Lcom/htc/opensense/social/GsonUtils$BundleAdapter;->createInstance(Ljava/lang/reflect/Type;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Lcom/htc/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/htc/gson/JsonDeserializationContext;)Landroid/os/Bundle;
    .locals 11
    .parameter "json"
    .parameter "typeOfT"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 123
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 124
    .local v0, bundle:Landroid/os/Bundle;
    invoke-virtual {p1}, Lcom/htc/gson/JsonElement;->getAsJsonObject()Lcom/htc/gson/JsonObject;

    move-result-object v5

    .line 125
    .local v5, myJson:Lcom/htc/gson/JsonObject;
    invoke-virtual {v5}, Lcom/htc/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 126
    .local v1, entries:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/gson/JsonElement;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 127
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/gson/JsonElement;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 128
    .local v4, key:Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/gson/JsonElement;

    .line 129
    .local v8, value:Lcom/htc/gson/JsonElement;
    invoke-virtual {v8}, Lcom/htc/gson/JsonElement;->isJsonPrimitive()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 130
    invoke-virtual {v8}, Lcom/htc/gson/JsonElement;->getAsJsonPrimitive()Lcom/htc/gson/JsonPrimitive;

    move-result-object v7

    .line 131
    .local v7, primitive:Lcom/htc/gson/JsonPrimitive;
    invoke-virtual {v7}, Lcom/htc/gson/JsonPrimitive;->isBoolean()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 132
    invoke-virtual {v7}, Lcom/htc/gson/JsonPrimitive;->getAsBoolean()Z

    move-result v9

    invoke-virtual {v0, v4, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 133
    :cond_1
    invoke-virtual {v7}, Lcom/htc/gson/JsonPrimitive;->isNumber()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 134
    invoke-virtual {v7}, Lcom/htc/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v6

    .line 135
    .local v6, number:Ljava/lang/Number;
    instance-of v9, v6, Ljava/lang/Integer;

    if-eqz v9, :cond_2

    .line 136
    invoke-virtual {v7}, Lcom/htc/gson/JsonPrimitive;->getAsInt()I

    move-result v9

    invoke-virtual {v0, v4, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 137
    :cond_2
    instance-of v9, v6, Ljava/lang/Long;

    if-eqz v9, :cond_0

    .line 138
    invoke-virtual {v7}, Lcom/htc/gson/JsonPrimitive;->getAsLong()J

    move-result-wide v9

    invoke-virtual {v0, v4, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 140
    .end local v6           #number:Ljava/lang/Number;
    :cond_3
    invoke-virtual {v7}, Lcom/htc/gson/JsonPrimitive;->isString()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 141
    invoke-virtual {v7}, Lcom/htc/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v4, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 143
    .end local v7           #primitive:Lcom/htc/gson/JsonPrimitive;
    :cond_4
    invoke-virtual {v8}, Lcom/htc/gson/JsonElement;->isJsonObject()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v8}, Lcom/htc/gson/JsonElement;->getAsJsonObject()Lcom/htc/gson/JsonObject;

    move-result-object v9

    #calls: Lcom/htc/opensense/social/GsonUtils$IntentAdapter;->isIntent(Lcom/htc/gson/JsonObject;)Z
    invoke-static {v9}, Lcom/htc/opensense/social/GsonUtils$IntentAdapter;->access$400(Lcom/htc/gson/JsonObject;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 145
    const-class v9, Landroid/content/Intent;

    invoke-interface {p3, v8, v9}, Lcom/htc/gson/JsonDeserializationContext;->deserialize(Lcom/htc/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    invoke-virtual {v0, v4, v9}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 149
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/gson/JsonElement;>;"
    .end local v4           #key:Ljava/lang/String;
    .end local v8           #value:Lcom/htc/gson/JsonElement;
    :cond_5
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
    .line 77
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/opensense/social/GsonUtils$BundleAdapter;->deserialize(Lcom/htc/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/htc/gson/JsonDeserializationContext;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Landroid/os/Bundle;Ljava/lang/reflect/Type;Lcom/htc/gson/JsonSerializationContext;)Lcom/htc/gson/JsonElement;
    .locals 6
    .parameter "bundle"
    .parameter "typeOfSrc"
    .parameter "context"

    .prologue
    .line 97
    new-instance v1, Lcom/htc/gson/JsonObject;

    invoke-direct {v1}, Lcom/htc/gson/JsonObject;-><init>()V

    .line 98
    .local v1, json:Lcom/htc/gson/JsonObject;
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 99
    .local v3, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 100
    .local v2, key:Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 101
    .local v4, value:Ljava/lang/Object;
    instance-of v5, v4, Landroid/content/Intent;

    if-eqz v5, :cond_0

    .line 102
    const-class v5, Landroid/content/Intent;

    invoke-interface {p3, v4, v5}, Lcom/htc/gson/JsonSerializationContext;->serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/htc/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lcom/htc/gson/JsonObject;->add(Ljava/lang/String;Lcom/htc/gson/JsonElement;)V

    goto :goto_0

    .line 103
    :cond_0
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 104
    check-cast v4, Ljava/lang/String;

    .end local v4           #value:Ljava/lang/Object;
    invoke-virtual {v1, v2, v4}, Lcom/htc/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 105
    .restart local v4       #value:Ljava/lang/Object;
    :cond_1
    instance-of v5, v4, Ljava/lang/Number;

    if-eqz v5, :cond_2

    .line 106
    check-cast v4, Ljava/lang/Number;

    .end local v4           #value:Ljava/lang/Object;
    invoke-virtual {v1, v2, v4}, Lcom/htc/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    goto :goto_0

    .line 107
    .restart local v4       #value:Ljava/lang/Object;
    :cond_2
    instance-of v5, v4, Ljava/lang/Boolean;

    if-eqz v5, :cond_3

    .line 108
    check-cast v4, Ljava/lang/Boolean;

    .end local v4           #value:Ljava/lang/Object;
    invoke-virtual {v1, v2, v4}, Lcom/htc/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 110
    .restart local v4       #value:Ljava/lang/Object;
    :cond_3
    invoke-interface {p3, v4}, Lcom/htc/gson/JsonSerializationContext;->serialize(Ljava/lang/Object;)Lcom/htc/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lcom/htc/gson/JsonObject;->add(Ljava/lang/String;Lcom/htc/gson/JsonElement;)V

    goto :goto_0

    .line 113
    .end local v2           #key:Ljava/lang/String;
    .end local v4           #value:Ljava/lang/Object;
    :cond_4
    return-object v1
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/htc/gson/JsonSerializationContext;)Lcom/htc/gson/JsonElement;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 77
    check-cast p1, Landroid/os/Bundle;

    .end local p1
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/opensense/social/GsonUtils$BundleAdapter;->serialize(Landroid/os/Bundle;Ljava/lang/reflect/Type;Lcom/htc/gson/JsonSerializationContext;)Lcom/htc/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method
