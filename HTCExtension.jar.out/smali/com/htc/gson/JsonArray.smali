.class public final Lcom/htc/gson/JsonArray;
.super Lcom/htc/gson/JsonElement;
.source "JsonArray.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/gson/JsonElement;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/htc/gson/JsonElement;",
        ">;"
    }
.end annotation


# instance fields
.field private final elements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/gson/JsonElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/htc/gson/JsonElement;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/gson/JsonArray;->elements:Ljava/util/List;

    .line 45
    return-void
.end method


# virtual methods
.method public add(Lcom/htc/gson/JsonElement;)V
    .locals 1
    .parameter "element"

    .prologue
    .line 57
    if-nez p1, :cond_0

    .line 58
    invoke-static {}, Lcom/htc/gson/JsonNull;->createJsonNull()Lcom/htc/gson/JsonNull;

    move-result-object p1

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/htc/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    return-void
.end method

.method public addAll(Lcom/htc/gson/JsonArray;)V
    .locals 2
    .parameter "array"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/htc/gson/JsonArray;->elements:Ljava/util/List;

    iget-object v1, p1, Lcom/htc/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 74
    return-void
.end method

.method public get(I)Lcom/htc/gson/JsonElement;
    .locals 1
    .parameter "i"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/htc/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/gson/JsonElement;

    return-object v0
.end method

.method public getAsBigDecimal()Ljava/math/BigDecimal;
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/htc/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 194
    iget-object v0, p0, Lcom/htc/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/gson/JsonElement;

    invoke-virtual {v0}, Lcom/htc/gson/JsonElement;->getAsBigDecimal()Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 196
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsBigInteger()Ljava/math/BigInteger;
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/htc/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 215
    iget-object v0, p0, Lcom/htc/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/gson/JsonElement;

    invoke-virtual {v0}, Lcom/htc/gson/JsonElement;->getAsBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 217
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsBoolean()Z
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/htc/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 339
    iget-object v0, p0, Lcom/htc/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/gson/JsonElement;

    invoke-virtual {v0}, Lcom/htc/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    return v0

    .line 341
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsByte()B
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/htc/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 287
    iget-object v0, p0, Lcom/htc/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/gson/JsonElement;

    invoke-virtual {v0}, Lcom/htc/gson/JsonElement;->getAsByte()B

    move-result v0

    return v0

    .line 289
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsCharacter()C
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Lcom/htc/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 299
    iget-object v0, p0, Lcom/htc/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/gson/JsonElement;

    invoke-virtual {v0}, Lcom/htc/gson/JsonElement;->getAsCharacter()C

    move-result v0

    return v0

    .line 301
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsDouble()D
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/htc/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 173
    iget-object v0, p0, Lcom/htc/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/gson/JsonElement;

    invoke-virtual {v0}, Lcom/htc/gson/JsonElement;->getAsDouble()D

    move-result-wide v0

    return-wide v0

    .line 175
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsFloat()F
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/htc/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 235
    iget-object v0, p0, Lcom/htc/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/gson/JsonElement;

    invoke-virtual {v0}, Lcom/htc/gson/JsonElement;->getAsFloat()F

    move-result v0

    return v0

    .line 237
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsInt()I
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/htc/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 275
    iget-object v0, p0, Lcom/htc/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/gson/JsonElement;

    invoke-virtual {v0}, Lcom/htc/gson/JsonElement;->getAsInt()I

    move-result v0

    return v0

    .line 277
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsLong()J
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/htc/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 255
    iget-object v0, p0, Lcom/htc/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/gson/JsonElement;

    invoke-virtual {v0}, Lcom/htc/gson/JsonElement;->getAsLong()J

    move-result-wide v0

    return-wide v0

    .line 257
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsNumber()Ljava/lang/Number;
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/htc/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 133
    iget-object v0, p0, Lcom/htc/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/gson/JsonElement;

    invoke-virtual {v0}, Lcom/htc/gson/JsonElement;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    return-object v0

    .line 135
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method getAsObject()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 354
    iget-object v0, p0, Lcom/htc/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 355
    iget-object v0, p0, Lcom/htc/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/gson/JsonElement;

    invoke-virtual {v0}, Lcom/htc/gson/JsonElement;->getAsObject()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 357
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsShort()S
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/htc/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 319
    iget-object v0, p0, Lcom/htc/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/gson/JsonElement;

    invoke-virtual {v0}, Lcom/htc/gson/JsonElement;->getAsShort()S

    move-result v0

    return v0

    .line 321
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/htc/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 153
    iget-object v0, p0, Lcom/htc/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/gson/JsonElement;

    invoke-virtual {v0}, Lcom/htc/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 155
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/htc/gson/JsonElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method reverse()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/htc/gson/JsonArray;->elements:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 81
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected toString(Ljava/lang/Appendable;Lcom/htc/gson/Escaper;)V
    .locals 4
    .parameter "sb"
    .parameter "escaper"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 366
    const/16 v3, 0x5b

    invoke-interface {p1, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 367
    const/4 v1, 0x1

    .line 368
    .local v1, first:Z
    iget-object v3, p0, Lcom/htc/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/gson/JsonElement;

    .line 369
    .local v0, element:Lcom/htc/gson/JsonElement;
    if-eqz v1, :cond_0

    .line 370
    const/4 v1, 0x0

    .line 374
    :goto_1
    invoke-virtual {v0, p1, p2}, Lcom/htc/gson/JsonElement;->toString(Ljava/lang/Appendable;Lcom/htc/gson/Escaper;)V

    goto :goto_0

    .line 372
    :cond_0
    const/16 v3, 0x2c

    invoke-interface {p1, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_1

    .line 376
    .end local v0           #element:Lcom/htc/gson/JsonElement;
    :cond_1
    const/16 v3, 0x5d

    invoke-interface {p1, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 377
    return-void
.end method
