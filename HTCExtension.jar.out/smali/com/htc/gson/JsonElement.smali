.class public abstract Lcom/htc/gson/JsonElement;
.super Ljava/lang/Object;
.source "JsonElement.java"


# static fields
.field private static final BASIC_ESCAPER:Lcom/htc/gson/Escaper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Lcom/htc/gson/Escaper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/gson/Escaper;-><init>(Z)V

    sput-object v0, Lcom/htc/gson/JsonElement;->BASIC_ESCAPER:Lcom/htc/gson/Escaper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAsBigDecimal()Ljava/math/BigDecimal;
    .locals 1

    .prologue
    .line 316
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getAsBigInteger()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 334
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getAsBoolean()Z
    .locals 1

    .prologue
    .line 167
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method getAsBooleanWrapper()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 180
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getAsByte()B
    .locals 1

    .prologue
    .line 280
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getAsCharacter()C
    .locals 1

    .prologue
    .line 298
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getAsDouble()D
    .locals 1

    .prologue
    .line 223
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getAsFloat()F
    .locals 1

    .prologue
    .line 236
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getAsInt()I
    .locals 1

    .prologue
    .line 262
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getAsJsonArray()Lcom/htc/gson/JsonArray;
    .locals 2

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/htc/gson/JsonElement;->isJsonArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    check-cast p0, Lcom/htc/gson/JsonArray;

    .end local p0
    return-object p0

    .line 110
    .restart local p0
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This is not a JSON Array."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAsJsonNull()Lcom/htc/gson/JsonNull;
    .locals 2

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/htc/gson/JsonElement;->isJsonNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    check-cast p0, Lcom/htc/gson/JsonNull;

    .end local p0
    return-object p0

    .line 153
    .restart local p0
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This is not a JSON Null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAsJsonObject()Lcom/htc/gson/JsonObject;
    .locals 2

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/htc/gson/JsonElement;->isJsonObject()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    check-cast p0, Lcom/htc/gson/JsonObject;

    .end local p0
    return-object p0

    .line 93
    .restart local p0
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This is not a JSON Object."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAsJsonPrimitive()Lcom/htc/gson/JsonPrimitive;
    .locals 2

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/htc/gson/JsonElement;->isJsonPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    check-cast p0, Lcom/htc/gson/JsonPrimitive;

    .end local p0
    return-object p0

    .line 131
    .restart local p0
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This is not a JSON Primitive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAsLong()J
    .locals 1

    .prologue
    .line 249
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getAsNumber()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 197
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method getAsObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 364
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getAsShort()S
    .locals 1

    .prologue
    .line 351
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getAsString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isJsonArray()Z
    .locals 1

    .prologue
    .line 45
    instance-of v0, p0, Lcom/htc/gson/JsonArray;

    return v0
.end method

.method public isJsonNull()Z
    .locals 1

    .prologue
    .line 77
    instance-of v0, p0, Lcom/htc/gson/JsonNull;

    return v0
.end method

.method public isJsonObject()Z
    .locals 1

    .prologue
    .line 54
    instance-of v0, p0, Lcom/htc/gson/JsonObject;

    return v0
.end method

.method public isJsonPrimitive()Z
    .locals 1

    .prologue
    .line 63
    instance-of v0, p0, Lcom/htc/gson/JsonPrimitive;

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 379
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 380
    .local v1, sb:Ljava/lang/StringBuilder;
    sget-object v2, Lcom/htc/gson/JsonElement;->BASIC_ESCAPER:Lcom/htc/gson/Escaper;

    invoke-virtual {p0, v1, v2}, Lcom/htc/gson/JsonElement;->toString(Ljava/lang/Appendable;Lcom/htc/gson/Escaper;)V

    .line 381
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 382
    .end local v1           #sb:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 383
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected abstract toString(Ljava/lang/Appendable;Lcom/htc/gson/Escaper;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
