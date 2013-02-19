.class final Lcom/htc/gson/JsonObjectDeserializationVisitor;
.super Lcom/htc/gson/JsonDeserializationVisitor;
.source "JsonObjectDeserializationVisitor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/htc/gson/JsonDeserializationVisitor",
        "<TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/htc/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/htc/gson/ObjectNavigatorFactory;Lcom/htc/gson/ObjectConstructor;Lcom/htc/gson/ParameterizedTypeHandlerMap;Lcom/htc/gson/JsonDeserializationContext;)V
    .locals 0
    .parameter "json"
    .parameter "type"
    .parameter "factory"
    .parameter "objectConstructor"
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/gson/JsonElement;",
            "Ljava/lang/reflect/Type;",
            "Lcom/htc/gson/ObjectNavigatorFactory;",
            "Lcom/htc/gson/ObjectConstructor;",
            "Lcom/htc/gson/ParameterizedTypeHandlerMap",
            "<",
            "Lcom/htc/gson/JsonDeserializer",
            "<*>;>;",
            "Lcom/htc/gson/JsonDeserializationContext;",
            ")V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, this:Lcom/htc/gson/JsonObjectDeserializationVisitor;,"Lcom/htc/gson/JsonObjectDeserializationVisitor<TT;>;"
    .local p5, deserializers:Lcom/htc/gson/ParameterizedTypeHandlerMap;,"Lcom/htc/gson/ParameterizedTypeHandlerMap<Lcom/htc/gson/JsonDeserializer<*>;>;"
    invoke-direct/range {p0 .. p6}, Lcom/htc/gson/JsonDeserializationVisitor;-><init>(Lcom/htc/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/htc/gson/ObjectNavigatorFactory;Lcom/htc/gson/ObjectConstructor;Lcom/htc/gson/ParameterizedTypeHandlerMap;Lcom/htc/gson/JsonDeserializationContext;)V

    .line 38
    return-void
.end method

.method private getFieldName(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 2
    .parameter "f"

    .prologue
    .line 114
    .local p0, this:Lcom/htc/gson/JsonObjectDeserializationVisitor;,"Lcom/htc/gson/JsonObjectDeserializationVisitor<TT;>;"
    iget-object v1, p0, Lcom/htc/gson/JsonDeserializationVisitor;->factory:Lcom/htc/gson/ObjectNavigatorFactory;

    invoke-virtual {v1}, Lcom/htc/gson/ObjectNavigatorFactory;->getFieldNamingPolicy()Lcom/htc/gson/FieldNamingStrategy;

    move-result-object v0

    .line 115
    .local v0, namingPolicy:Lcom/htc/gson/FieldNamingStrategy;
    invoke-interface {v0, p1}, Lcom/htc/gson/FieldNamingStrategy;->translateName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected constructTarget()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, this:Lcom/htc/gson/JsonObjectDeserializationVisitor;,"Lcom/htc/gson/JsonObjectDeserializationVisitor<TT;>;"
    iget-object v0, p0, Lcom/htc/gson/JsonDeserializationVisitor;->objectConstructor:Lcom/htc/gson/ObjectConstructor;

    iget-object v1, p0, Lcom/htc/gson/JsonDeserializationVisitor;->targetType:Ljava/lang/reflect/Type;

    invoke-interface {v0, v1}, Lcom/htc/gson/ObjectConstructor;->construct(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public startVisitingObject(Ljava/lang/Object;)V
    .locals 0
    .parameter "node"

    .prologue
    .line 56
    .local p0, this:Lcom/htc/gson/JsonObjectDeserializationVisitor;,"Lcom/htc/gson/JsonObjectDeserializationVisitor<TT;>;"
    return-void
.end method

.method public visitArray(Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 3
    .parameter "array"
    .parameter "componentType"

    .prologue
    .line 64
    .local p0, this:Lcom/htc/gson/JsonObjectDeserializationVisitor;,"Lcom/htc/gson/JsonObjectDeserializationVisitor<TT;>;"
    new-instance v0, Lcom/htc/gson/JsonParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expecting object but found array: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/gson/JsonParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitArrayField(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/lang/Object;)V
    .locals 8
    .parameter "f"
    .parameter "typeOfF"
    .parameter "obj"

    .prologue
    .line 96
    .local p0, this:Lcom/htc/gson/JsonObjectDeserializationVisitor;,"Lcom/htc/gson/JsonObjectDeserializationVisitor<TT;>;"
    :try_start_0
    iget-object v5, p0, Lcom/htc/gson/JsonDeserializationVisitor;->json:Lcom/htc/gson/JsonElement;

    invoke-virtual {v5}, Lcom/htc/gson/JsonElement;->isJsonObject()Z

    move-result v5

    if-nez v5, :cond_0

    .line 97
    new-instance v5, Lcom/htc/gson/JsonParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expecting object found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/gson/JsonDeserializationVisitor;->json:Lcom/htc/gson/JsonElement;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/htc/gson/JsonParseException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :catch_0
    move-exception v1

    .line 109
    .local v1, e:Ljava/lang/IllegalAccessException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 99
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/htc/gson/JsonDeserializationVisitor;->json:Lcom/htc/gson/JsonElement;

    invoke-virtual {v5}, Lcom/htc/gson/JsonElement;->getAsJsonObject()Lcom/htc/gson/JsonObject;

    move-result-object v4

    .line 100
    .local v4, jsonObject:Lcom/htc/gson/JsonObject;
    invoke-direct {p0, p1}, Lcom/htc/gson/JsonObjectDeserializationVisitor;->getFieldName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, fName:Ljava/lang/String;
    invoke-virtual {v4, v2}, Lcom/htc/gson/JsonObject;->get(Ljava/lang/String;)Lcom/htc/gson/JsonElement;

    move-result-object v3

    check-cast v3, Lcom/htc/gson/JsonArray;

    .line 102
    .local v3, jsonChild:Lcom/htc/gson/JsonArray;
    if-eqz v3, :cond_1

    .line 103
    invoke-virtual {p0, p2, v3}, Lcom/htc/gson/JsonObjectDeserializationVisitor;->visitChildAsArray(Ljava/lang/reflect/Type;Lcom/htc/gson/JsonArray;)Ljava/lang/Object;

    move-result-object v0

    .line 104
    .local v0, array:Ljava/lang/Object;
    invoke-virtual {p1, p3, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 111
    .end local v0           #array:Ljava/lang/Object;
    :goto_0
    return-void

    .line 106
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {p1, p3, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public visitFieldUsingCustomHandler(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/lang/Object;)Z
    .locals 11
    .parameter "f"
    .parameter "declaredTypeOfField"
    .parameter "parent"

    .prologue
    .local p0, this:Lcom/htc/gson/JsonObjectDeserializationVisitor;,"Lcom/htc/gson/JsonObjectDeserializationVisitor<TT;>;"
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 124
    :try_start_0
    invoke-direct {p0, p1}, Lcom/htc/gson/JsonObjectDeserializationVisitor;->getFieldName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v2

    .line 125
    .local v2, fName:Ljava/lang/String;
    iget-object v9, p0, Lcom/htc/gson/JsonDeserializationVisitor;->json:Lcom/htc/gson/JsonElement;

    invoke-virtual {v9}, Lcom/htc/gson/JsonElement;->isJsonObject()Z

    move-result v9

    if-nez v9, :cond_0

    .line 126
    new-instance v7, Lcom/htc/gson/JsonParseException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Expecting object found: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/gson/JsonDeserializationVisitor;->json:Lcom/htc/gson/JsonElement;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/htc/gson/JsonParseException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .end local v2           #fName:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 149
    .local v1, e:Ljava/lang/IllegalAccessException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7}, Ljava/lang/RuntimeException;-><init>()V

    throw v7

    .line 128
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    .restart local v2       #fName:Ljava/lang/String;
    :cond_0
    :try_start_1
    iget-object v9, p0, Lcom/htc/gson/JsonDeserializationVisitor;->json:Lcom/htc/gson/JsonElement;

    invoke-virtual {v9}, Lcom/htc/gson/JsonElement;->getAsJsonObject()Lcom/htc/gson/JsonObject;

    move-result-object v9

    invoke-virtual {v9, v2}, Lcom/htc/gson/JsonObject;->get(Ljava/lang/String;)Lcom/htc/gson/JsonElement;

    move-result-object v0

    .line 129
    .local v0, child:Lcom/htc/gson/JsonElement;
    new-instance v5, Lcom/htc/gson/TypeInfo;

    invoke-direct {v5, p2}, Lcom/htc/gson/TypeInfo;-><init>(Ljava/lang/reflect/Type;)V

    .line 130
    .local v5, typeInfo:Lcom/htc/gson/TypeInfo;
    if-nez v0, :cond_2

    .line 147
    :cond_1
    :goto_0
    return v7

    .line 132
    :cond_2
    invoke-virtual {v0}, Lcom/htc/gson/JsonElement;->isJsonNull()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 133
    invoke-virtual {v5}, Lcom/htc/gson/TypeInfo;->isPrimitive()Z

    move-result v8

    if-nez v8, :cond_1

    .line 134
    const/4 v8, 0x0

    invoke-virtual {p1, p3, v8}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 138
    :cond_3
    new-instance v3, Lcom/htc/gson/ObjectTypePair;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v3, v9, p2, v10}, Lcom/htc/gson/ObjectTypePair;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Type;Z)V

    .line 139
    .local v3, objTypePair:Lcom/htc/gson/ObjectTypePair;
    iget-object v9, p0, Lcom/htc/gson/JsonDeserializationVisitor;->deserializers:Lcom/htc/gson/ParameterizedTypeHandlerMap;

    invoke-virtual {v3, v9}, Lcom/htc/gson/ObjectTypePair;->getMatchingHandler(Lcom/htc/gson/ParameterizedTypeHandlerMap;)Lcom/htc/gson/Pair;

    move-result-object v4

    .line 140
    .local v4, pair:Lcom/htc/gson/Pair;,"Lcom/htc/gson/Pair<Lcom/htc/gson/JsonDeserializer<*>;Lcom/htc/gson/ObjectTypePair;>;"
    if-nez v4, :cond_4

    move v7, v8

    .line 141
    goto :goto_0

    .line 143
    :cond_4
    invoke-virtual {p0, v0, v4}, Lcom/htc/gson/JsonObjectDeserializationVisitor;->invokeCustomDeserializer(Lcom/htc/gson/JsonElement;Lcom/htc/gson/Pair;)Ljava/lang/Object;

    move-result-object v6

    .line 144
    .local v6, value:Ljava/lang/Object;
    if-nez v6, :cond_5

    invoke-virtual {v5}, Lcom/htc/gson/TypeInfo;->isPrimitive()Z

    move-result v8

    if-nez v8, :cond_1

    .line 145
    :cond_5
    invoke-virtual {p1, p3, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public visitObjectField(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/lang/Object;)V
    .locals 8
    .parameter "f"
    .parameter "typeOfF"
    .parameter "obj"

    .prologue
    .line 73
    .local p0, this:Lcom/htc/gson/JsonObjectDeserializationVisitor;,"Lcom/htc/gson/JsonObjectDeserializationVisitor<TT;>;"
    :try_start_0
    iget-object v5, p0, Lcom/htc/gson/JsonDeserializationVisitor;->json:Lcom/htc/gson/JsonElement;

    invoke-virtual {v5}, Lcom/htc/gson/JsonElement;->isJsonObject()Z

    move-result v5

    if-nez v5, :cond_0

    .line 74
    new-instance v5, Lcom/htc/gson/JsonParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expecting object found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/gson/JsonDeserializationVisitor;->json:Lcom/htc/gson/JsonElement;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/htc/gson/JsonParseException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :catch_0
    move-exception v1

    .line 86
    .local v1, e:Ljava/lang/IllegalAccessException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 76
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/htc/gson/JsonDeserializationVisitor;->json:Lcom/htc/gson/JsonElement;

    invoke-virtual {v5}, Lcom/htc/gson/JsonElement;->getAsJsonObject()Lcom/htc/gson/JsonObject;

    move-result-object v4

    .line 77
    .local v4, jsonObject:Lcom/htc/gson/JsonObject;
    invoke-direct {p0, p1}, Lcom/htc/gson/JsonObjectDeserializationVisitor;->getFieldName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, fName:Ljava/lang/String;
    invoke-virtual {v4, v2}, Lcom/htc/gson/JsonObject;->get(Ljava/lang/String;)Lcom/htc/gson/JsonElement;

    move-result-object v3

    .line 79
    .local v3, jsonChild:Lcom/htc/gson/JsonElement;
    if-eqz v3, :cond_1

    .line 80
    invoke-virtual {p0, p2, v3}, Lcom/htc/gson/JsonObjectDeserializationVisitor;->visitChildAsObject(Ljava/lang/reflect/Type;Lcom/htc/gson/JsonElement;)Ljava/lang/Object;

    move-result-object v0

    .line 81
    .local v0, child:Ljava/lang/Object;
    invoke-virtual {p1, p3, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 88
    .end local v0           #child:Ljava/lang/Object;
    :goto_0
    return-void

    .line 83
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {p1, p3, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public visitPrimitive(Ljava/lang/Object;)V
    .locals 4
    .parameter "primitive"

    .prologue
    .line 159
    .local p0, this:Lcom/htc/gson/JsonObjectDeserializationVisitor;,"Lcom/htc/gson/JsonObjectDeserializationVisitor<TT;>;"
    iget-object v1, p0, Lcom/htc/gson/JsonDeserializationVisitor;->json:Lcom/htc/gson/JsonElement;

    invoke-virtual {v1}, Lcom/htc/gson/JsonElement;->isJsonPrimitive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 160
    new-instance v1, Lcom/htc/gson/JsonParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Type information is unavailable, and the target object is not a primitive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/gson/JsonDeserializationVisitor;->json:Lcom/htc/gson/JsonElement;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/gson/JsonParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 163
    :cond_0
    iget-object v1, p0, Lcom/htc/gson/JsonDeserializationVisitor;->json:Lcom/htc/gson/JsonElement;

    invoke-virtual {v1}, Lcom/htc/gson/JsonElement;->getAsJsonPrimitive()Lcom/htc/gson/JsonPrimitive;

    move-result-object v0

    .line 164
    .local v0, prim:Lcom/htc/gson/JsonPrimitive;
    invoke-virtual {v0}, Lcom/htc/gson/JsonPrimitive;->getAsObject()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/gson/JsonDeserializationVisitor;->target:Ljava/lang/Object;

    .line 165
    return-void
.end method
