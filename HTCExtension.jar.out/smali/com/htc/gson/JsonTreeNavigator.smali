.class final Lcom/htc/gson/JsonTreeNavigator;
.super Ljava/lang/Object;
.source "JsonTreeNavigator.java"


# instance fields
.field private final visitNulls:Z

.field private final visitor:Lcom/htc/gson/JsonElementVisitor;


# direct methods
.method constructor <init>(Lcom/htc/gson/JsonElementVisitor;Z)V
    .locals 0
    .parameter "visitor"
    .parameter "visitNulls"

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/htc/gson/JsonTreeNavigator;->visitor:Lcom/htc/gson/JsonElementVisitor;

    .line 35
    iput-boolean p2, p0, Lcom/htc/gson/JsonTreeNavigator;->visitNulls:Z

    .line 36
    return-void
.end method

.method private visitChild(Lcom/htc/gson/JsonArray;Lcom/htc/gson/JsonElement;Z)V
    .locals 4
    .parameter "parent"
    .parameter "child"
    .parameter "isFirst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    invoke-virtual {p2}, Lcom/htc/gson/JsonElement;->isJsonNull()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    iget-object v2, p0, Lcom/htc/gson/JsonTreeNavigator;->visitor:Lcom/htc/gson/JsonElementVisitor;

    invoke-interface {v2, p1, p3}, Lcom/htc/gson/JsonElementVisitor;->visitNullArrayMember(Lcom/htc/gson/JsonArray;Z)V

    .line 104
    invoke-virtual {p0, p2}, Lcom/htc/gson/JsonTreeNavigator;->navigate(Lcom/htc/gson/JsonElement;)V

    .line 116
    :goto_0
    return-void

    .line 105
    :cond_0
    invoke-virtual {p2}, Lcom/htc/gson/JsonElement;->isJsonArray()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 106
    invoke-virtual {p2}, Lcom/htc/gson/JsonElement;->getAsJsonArray()Lcom/htc/gson/JsonArray;

    move-result-object v0

    .line 107
    .local v0, childAsArray:Lcom/htc/gson/JsonArray;
    iget-object v2, p0, Lcom/htc/gson/JsonTreeNavigator;->visitor:Lcom/htc/gson/JsonElementVisitor;

    invoke-interface {v2, p1, v0, p3}, Lcom/htc/gson/JsonElementVisitor;->visitArrayMember(Lcom/htc/gson/JsonArray;Lcom/htc/gson/JsonArray;Z)V

    .line 108
    invoke-virtual {p0, v0}, Lcom/htc/gson/JsonTreeNavigator;->navigate(Lcom/htc/gson/JsonElement;)V

    goto :goto_0

    .line 109
    .end local v0           #childAsArray:Lcom/htc/gson/JsonArray;
    :cond_1
    invoke-virtual {p2}, Lcom/htc/gson/JsonElement;->isJsonObject()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 110
    invoke-virtual {p2}, Lcom/htc/gson/JsonElement;->getAsJsonObject()Lcom/htc/gson/JsonObject;

    move-result-object v1

    .line 111
    .local v1, childAsObject:Lcom/htc/gson/JsonObject;
    iget-object v2, p0, Lcom/htc/gson/JsonTreeNavigator;->visitor:Lcom/htc/gson/JsonElementVisitor;

    invoke-interface {v2, p1, v1, p3}, Lcom/htc/gson/JsonElementVisitor;->visitArrayMember(Lcom/htc/gson/JsonArray;Lcom/htc/gson/JsonObject;Z)V

    .line 112
    invoke-virtual {p0, v1}, Lcom/htc/gson/JsonTreeNavigator;->navigate(Lcom/htc/gson/JsonElement;)V

    goto :goto_0

    .line 114
    .end local v1           #childAsObject:Lcom/htc/gson/JsonObject;
    :cond_2
    iget-object v2, p0, Lcom/htc/gson/JsonTreeNavigator;->visitor:Lcom/htc/gson/JsonElementVisitor;

    invoke-virtual {p2}, Lcom/htc/gson/JsonElement;->getAsJsonPrimitive()Lcom/htc/gson/JsonPrimitive;

    move-result-object v3

    invoke-interface {v2, p1, v3, p3}, Lcom/htc/gson/JsonElementVisitor;->visitArrayMember(Lcom/htc/gson/JsonArray;Lcom/htc/gson/JsonPrimitive;Z)V

    goto :goto_0
.end method

.method private visitChild(Lcom/htc/gson/JsonObject;Ljava/lang/String;Lcom/htc/gson/JsonElement;Z)Z
    .locals 4
    .parameter "parent"
    .parameter "childName"
    .parameter "child"
    .parameter "isFirst"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-virtual {p3}, Lcom/htc/gson/JsonElement;->isJsonNull()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 78
    iget-boolean v2, p0, Lcom/htc/gson/JsonTreeNavigator;->visitNulls:Z

    if-eqz v2, :cond_0

    .line 79
    iget-object v2, p0, Lcom/htc/gson/JsonTreeNavigator;->visitor:Lcom/htc/gson/JsonElementVisitor;

    invoke-interface {v2, p1, p2, p4}, Lcom/htc/gson/JsonElementVisitor;->visitNullObjectMember(Lcom/htc/gson/JsonObject;Ljava/lang/String;Z)V

    .line 80
    invoke-virtual {p3}, Lcom/htc/gson/JsonElement;->getAsJsonNull()Lcom/htc/gson/JsonNull;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/gson/JsonTreeNavigator;->navigate(Lcom/htc/gson/JsonElement;)V

    .line 95
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 82
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 84
    :cond_1
    invoke-virtual {p3}, Lcom/htc/gson/JsonElement;->isJsonArray()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 85
    invoke-virtual {p3}, Lcom/htc/gson/JsonElement;->getAsJsonArray()Lcom/htc/gson/JsonArray;

    move-result-object v0

    .line 86
    .local v0, childAsArray:Lcom/htc/gson/JsonArray;
    iget-object v2, p0, Lcom/htc/gson/JsonTreeNavigator;->visitor:Lcom/htc/gson/JsonElementVisitor;

    invoke-interface {v2, p1, p2, v0, p4}, Lcom/htc/gson/JsonElementVisitor;->visitObjectMember(Lcom/htc/gson/JsonObject;Ljava/lang/String;Lcom/htc/gson/JsonArray;Z)V

    .line 87
    invoke-virtual {p0, v0}, Lcom/htc/gson/JsonTreeNavigator;->navigate(Lcom/htc/gson/JsonElement;)V

    goto :goto_0

    .line 88
    .end local v0           #childAsArray:Lcom/htc/gson/JsonArray;
    :cond_2
    invoke-virtual {p3}, Lcom/htc/gson/JsonElement;->isJsonObject()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 89
    invoke-virtual {p3}, Lcom/htc/gson/JsonElement;->getAsJsonObject()Lcom/htc/gson/JsonObject;

    move-result-object v1

    .line 90
    .local v1, childAsObject:Lcom/htc/gson/JsonObject;
    iget-object v2, p0, Lcom/htc/gson/JsonTreeNavigator;->visitor:Lcom/htc/gson/JsonElementVisitor;

    invoke-interface {v2, p1, p2, v1, p4}, Lcom/htc/gson/JsonElementVisitor;->visitObjectMember(Lcom/htc/gson/JsonObject;Ljava/lang/String;Lcom/htc/gson/JsonObject;Z)V

    .line 91
    invoke-virtual {p0, v1}, Lcom/htc/gson/JsonTreeNavigator;->navigate(Lcom/htc/gson/JsonElement;)V

    goto :goto_0

    .line 93
    .end local v1           #childAsObject:Lcom/htc/gson/JsonObject;
    :cond_3
    iget-object v2, p0, Lcom/htc/gson/JsonTreeNavigator;->visitor:Lcom/htc/gson/JsonElementVisitor;

    invoke-virtual {p3}, Lcom/htc/gson/JsonElement;->getAsJsonPrimitive()Lcom/htc/gson/JsonPrimitive;

    move-result-object v3

    invoke-interface {v2, p1, p2, v3, p4}, Lcom/htc/gson/JsonElementVisitor;->visitObjectMember(Lcom/htc/gson/JsonObject;Ljava/lang/String;Lcom/htc/gson/JsonPrimitive;Z)V

    goto :goto_0
.end method


# virtual methods
.method public navigate(Lcom/htc/gson/JsonElement;)V
    .locals 9
    .parameter "element"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-virtual {p1}, Lcom/htc/gson/JsonElement;->isJsonNull()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 44
    iget-object v7, p0, Lcom/htc/gson/JsonTreeNavigator;->visitor:Lcom/htc/gson/JsonElementVisitor;

    invoke-interface {v7}, Lcom/htc/gson/JsonElementVisitor;->visitNull()V

    .line 70
    :goto_0
    return-void

    .line 45
    :cond_0
    invoke-virtual {p1}, Lcom/htc/gson/JsonElement;->isJsonArray()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 46
    invoke-virtual {p1}, Lcom/htc/gson/JsonElement;->getAsJsonArray()Lcom/htc/gson/JsonArray;

    move-result-object v0

    .line 47
    .local v0, array:Lcom/htc/gson/JsonArray;
    iget-object v7, p0, Lcom/htc/gson/JsonTreeNavigator;->visitor:Lcom/htc/gson/JsonElementVisitor;

    invoke-interface {v7, v0}, Lcom/htc/gson/JsonElementVisitor;->startArray(Lcom/htc/gson/JsonArray;)V

    .line 48
    const/4 v3, 0x1

    .line 49
    .local v3, isFirst:Z
    invoke-virtual {v0}, Lcom/htc/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/gson/JsonElement;

    .line 50
    .local v1, child:Lcom/htc/gson/JsonElement;
    invoke-direct {p0, v0, v1, v3}, Lcom/htc/gson/JsonTreeNavigator;->visitChild(Lcom/htc/gson/JsonArray;Lcom/htc/gson/JsonElement;Z)V

    .line 51
    if-eqz v3, :cond_1

    .line 52
    const/4 v3, 0x0

    goto :goto_1

    .line 55
    .end local v1           #child:Lcom/htc/gson/JsonElement;
    :cond_2
    iget-object v7, p0, Lcom/htc/gson/JsonTreeNavigator;->visitor:Lcom/htc/gson/JsonElementVisitor;

    invoke-interface {v7, v0}, Lcom/htc/gson/JsonElementVisitor;->endArray(Lcom/htc/gson/JsonArray;)V

    goto :goto_0

    .line 56
    .end local v0           #array:Lcom/htc/gson/JsonArray;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #isFirst:Z
    :cond_3
    invoke-virtual {p1}, Lcom/htc/gson/JsonElement;->isJsonObject()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 57
    invoke-virtual {p1}, Lcom/htc/gson/JsonElement;->getAsJsonObject()Lcom/htc/gson/JsonObject;

    move-result-object v5

    .line 58
    .local v5, object:Lcom/htc/gson/JsonObject;
    iget-object v7, p0, Lcom/htc/gson/JsonTreeNavigator;->visitor:Lcom/htc/gson/JsonElementVisitor;

    invoke-interface {v7, v5}, Lcom/htc/gson/JsonElementVisitor;->startObject(Lcom/htc/gson/JsonObject;)V

    .line 59
    const/4 v3, 0x1

    .line 60
    .restart local v3       #isFirst:Z
    invoke-virtual {v5}, Lcom/htc/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 61
    .local v4, member:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/gson/JsonElement;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/gson/JsonElement;

    invoke-direct {p0, v5, v7, v8, v3}, Lcom/htc/gson/JsonTreeNavigator;->visitChild(Lcom/htc/gson/JsonObject;Ljava/lang/String;Lcom/htc/gson/JsonElement;Z)Z

    move-result v6

    .line 62
    .local v6, visited:Z
    if-eqz v6, :cond_4

    if-eqz v3, :cond_4

    .line 63
    const/4 v3, 0x0

    goto :goto_2

    .line 66
    .end local v4           #member:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/gson/JsonElement;>;"
    .end local v6           #visited:Z
    :cond_5
    iget-object v7, p0, Lcom/htc/gson/JsonTreeNavigator;->visitor:Lcom/htc/gson/JsonElementVisitor;

    invoke-interface {v7, v5}, Lcom/htc/gson/JsonElementVisitor;->endObject(Lcom/htc/gson/JsonObject;)V

    goto :goto_0

    .line 68
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #isFirst:Z
    .end local v5           #object:Lcom/htc/gson/JsonObject;
    :cond_6
    iget-object v7, p0, Lcom/htc/gson/JsonTreeNavigator;->visitor:Lcom/htc/gson/JsonElementVisitor;

    invoke-virtual {p1}, Lcom/htc/gson/JsonElement;->getAsJsonPrimitive()Lcom/htc/gson/JsonPrimitive;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/htc/gson/JsonElementVisitor;->visitPrimitive(Lcom/htc/gson/JsonPrimitive;)V

    goto :goto_0
.end method
