.class public final Lcom/htc/gson/JsonPrimitive;
.super Lcom/htc/gson/JsonElement;
.source "JsonPrimitive.java"


# static fields
.field private static final INTEGER_MAX:Ljava/math/BigInteger;

.field private static final LONG_MAX:Ljava/math/BigInteger;

.field private static final PRIMITIVE_TYPES:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-class v2, Ljava/lang/Long;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-class v2, Ljava/lang/Short;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-class v2, Ljava/lang/Float;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-class v2, Ljava/lang/Double;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-class v2, Ljava/lang/Byte;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-class v2, Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-class v2, Ljava/lang/Character;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/gson/JsonPrimitive;->PRIMITIVE_TYPES:[Ljava/lang/Class;

    .line 38
    const-wide/32 v0, 0x7fffffff

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/htc/gson/JsonPrimitive;->INTEGER_MAX:Ljava/math/BigInteger;

    .line 39
    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/htc/gson/JsonPrimitive;->LONG_MAX:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "bool"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/htc/gson/JsonElement;-><init>()V

    .line 49
    invoke-virtual {p0, p1}, Lcom/htc/gson/JsonPrimitive;->setValue(Ljava/lang/Object;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/Character;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/htc/gson/JsonElement;-><init>()V

    .line 77
    invoke-virtual {p0, p1}, Lcom/htc/gson/JsonPrimitive;->setValue(Ljava/lang/Object;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .locals 0
    .parameter "number"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/htc/gson/JsonElement;-><init>()V

    .line 58
    invoke-virtual {p0, p1}, Lcom/htc/gson/JsonPrimitive;->setValue(Ljava/lang/Object;)V

    .line 59
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .parameter "primitive"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/htc/gson/JsonElement;-><init>()V

    .line 87
    invoke-virtual {p0, p1}, Lcom/htc/gson/JsonPrimitive;->setValue(Ljava/lang/Object;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "string"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/htc/gson/JsonElement;-><init>()V

    .line 67
    invoke-virtual {p0, p1}, Lcom/htc/gson/JsonPrimitive;->setValue(Ljava/lang/Object;)V

    .line 68
    return-void
.end method

.method private static isFloatingPoint(Lcom/htc/gson/JsonPrimitive;)Z
    .locals 3
    .parameter "primitive"

    .prologue
    const/4 v1, 0x0

    .line 474
    iget-object v2, p0, Lcom/htc/gson/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Number;

    if-eqz v2, :cond_1

    .line 475
    iget-object v0, p0, Lcom/htc/gson/JsonPrimitive;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    .line 476
    .local v0, number:Ljava/lang/Number;
    instance-of v2, v0, Ljava/math/BigDecimal;

    if-nez v2, :cond_0

    instance-of v2, v0, Ljava/lang/Double;

    if-nez v2, :cond_0

    instance-of v2, v0, Ljava/lang/Float;

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 478
    .end local v0           #number:Ljava/lang/Number;
    :cond_1
    return v1
.end method

.method private static isIntegral(Lcom/htc/gson/JsonPrimitive;)Z
    .locals 3
    .parameter "primitive"

    .prologue
    const/4 v1, 0x0

    .line 462
    iget-object v2, p0, Lcom/htc/gson/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Number;

    if-eqz v2, :cond_1

    .line 463
    iget-object v0, p0, Lcom/htc/gson/JsonPrimitive;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    .line 464
    .local v0, number:Ljava/lang/Number;
    instance-of v2, v0, Ljava/math/BigInteger;

    if-nez v2, :cond_0

    instance-of v2, v0, Ljava/lang/Long;

    if-nez v2, :cond_0

    instance-of v2, v0, Ljava/lang/Integer;

    if-nez v2, :cond_0

    instance-of v2, v0, Ljava/lang/Short;

    if-nez v2, :cond_0

    instance-of v2, v0, Ljava/lang/Byte;

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 467
    .end local v0           #number:Ljava/lang/Number;
    :cond_1
    return v1
.end method

.method private static isPrimitiveOrString(Ljava/lang/Object;)Z
    .locals 7
    .parameter "target"

    .prologue
    const/4 v5, 0x1

    .line 398
    instance-of v6, p0, Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 408
    :cond_0
    :goto_0
    return v5

    .line 402
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 403
    .local v1, classOfPrimitive:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v0, Lcom/htc/gson/JsonPrimitive;->PRIMITIVE_TYPES:[Ljava/lang/Class;

    .local v0, arr$:[Ljava/lang/Class;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    .line 404
    .local v4, standardPrimitive:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v4, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 403
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 408
    .end local v4           #standardPrimitive:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 438
    if-ne p0, p1, :cond_1

    .line 454
    :cond_0
    :goto_0
    return v1

    .line 441
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 442
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 444
    check-cast v0, Lcom/htc/gson/JsonPrimitive;

    .line 445
    .local v0, other:Lcom/htc/gson/JsonPrimitive;
    iget-object v3, p0, Lcom/htc/gson/JsonPrimitive;->value:Ljava/lang/Object;

    if-nez v3, :cond_4

    .line 446
    iget-object v3, v0, Lcom/htc/gson/JsonPrimitive;->value:Ljava/lang/Object;

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 448
    :cond_4
    invoke-static {p0}, Lcom/htc/gson/JsonPrimitive;->isIntegral(Lcom/htc/gson/JsonPrimitive;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v0}, Lcom/htc/gson/JsonPrimitive;->isIntegral(Lcom/htc/gson/JsonPrimitive;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 449
    invoke-virtual {p0}, Lcom/htc/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/htc/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 451
    :cond_5
    invoke-static {p0}, Lcom/htc/gson/JsonPrimitive;->isFloatingPoint(Lcom/htc/gson/JsonPrimitive;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v0}, Lcom/htc/gson/JsonPrimitive;->isFloatingPoint(Lcom/htc/gson/JsonPrimitive;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 452
    invoke-virtual {p0}, Lcom/htc/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v0}, Lcom/htc/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 454
    :cond_6
    iget-object v1, p0, Lcom/htc/gson/JsonPrimitive;->value:Ljava/lang/Object;

    iget-object v2, v0, Lcom/htc/gson/JsonPrimitive;->value:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getAsBigDecimal()Ljava/math/BigDecimal;
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/htc/gson/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/math/BigDecimal;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/htc/gson/JsonPrimitive;->value:Ljava/lang/Object;

    check-cast v0, Ljava/math/BigDecimal;

    .line 242
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/htc/gson/JsonPrimitive;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getAsBigInteger()Ljava/math/BigInteger;
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/htc/gson/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/math/BigInteger;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/htc/gson/JsonPrimitive;->value:Ljava/lang/Object;

    check-cast v0, Ljava/math/BigInteger;

    .line 261
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/htc/gson/JsonPrimitive;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getAsBoolean()Z
    .locals 1

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/htc/gson/JsonPrimitive;->isBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/htc/gson/JsonPrimitive;->getAsBooleanWrapper()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 142
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method getAsBooleanWrapper()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/htc/gson/JsonPrimitive;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public getAsByte()B
    .locals 1

    .prologue
    .line 347
    invoke-virtual {p0}, Lcom/htc/gson/JsonPrimitive;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    invoke-virtual {p0}, Lcom/htc/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->byteValue()B

    move-result v0

    .line 350
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    goto :goto_0
.end method

.method public getAsCharacter()C
    .locals 2

    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/htc/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public getAsDouble()D
    .locals 2

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/htc/gson/JsonPrimitive;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {p0}, Lcom/htc/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 223
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    goto :goto_0
.end method

.method public getAsFloat()F
    .locals 1

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/htc/gson/JsonPrimitive;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {p0}, Lcom/htc/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 280
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    goto :goto_0
.end method

.method public getAsInt()I
    .locals 1

    .prologue
    .line 334
    invoke-virtual {p0}, Lcom/htc/gson/JsonPrimitive;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    invoke-virtual {p0}, Lcom/htc/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 337
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getAsLong()J
    .locals 2

    .prologue
    .line 296
    invoke-virtual {p0}, Lcom/htc/gson/JsonPrimitive;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {p0}, Lcom/htc/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 299
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getAsNumber()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/htc/gson/JsonPrimitive;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    return-object v0
.end method

.method getAsObject()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 370
    iget-object v1, p0, Lcom/htc/gson/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of v1, v1, Ljava/math/BigInteger;

    if-eqz v1, :cond_1

    .line 371
    iget-object v0, p0, Lcom/htc/gson/JsonPrimitive;->value:Ljava/lang/Object;

    check-cast v0, Ljava/math/BigInteger;

    .line 372
    .local v0, big:Ljava/math/BigInteger;
    sget-object v1, Lcom/htc/gson/JsonPrimitive;->INTEGER_MAX:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gez v1, :cond_0

    .line 373
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 379
    .end local v0           #big:Ljava/math/BigInteger;
    :goto_0
    return-object v1

    .line 374
    .restart local v0       #big:Ljava/math/BigInteger;
    :cond_0
    sget-object v1, Lcom/htc/gson/JsonPrimitive;->LONG_MAX:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gez v1, :cond_1

    .line 375
    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    .line 379
    .end local v0           #big:Ljava/math/BigInteger;
    :cond_1
    iget-object v1, p0, Lcom/htc/gson/JsonPrimitive;->value:Ljava/lang/Object;

    goto :goto_0
.end method

.method public getAsShort()S
    .locals 1

    .prologue
    .line 315
    invoke-virtual {p0}, Lcom/htc/gson/JsonPrimitive;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    invoke-virtual {p0}, Lcom/htc/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v0

    .line 318
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0

    goto :goto_0
.end method

.method public getAsString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/htc/gson/JsonPrimitive;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/htc/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 204
    :goto_0
    return-object v0

    .line 201
    :cond_0
    invoke-virtual {p0}, Lcom/htc/gson/JsonPrimitive;->isBoolean()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    invoke-virtual {p0}, Lcom/htc/gson/JsonPrimitive;->getAsBooleanWrapper()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/htc/gson/JsonPrimitive;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/16 v4, 0x20

    .line 417
    iget-object v2, p0, Lcom/htc/gson/JsonPrimitive;->value:Ljava/lang/Object;

    if-nez v2, :cond_0

    .line 418
    const/16 v2, 0x1f

    .line 429
    :goto_0
    return v2

    .line 421
    :cond_0
    invoke-static {p0}, Lcom/htc/gson/JsonPrimitive;->isIntegral(Lcom/htc/gson/JsonPrimitive;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 422
    invoke-virtual {p0}, Lcom/htc/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 423
    .local v0, value:J
    ushr-long v2, v0, v4

    xor-long/2addr v2, v0

    long-to-int v2, v2

    goto :goto_0

    .line 425
    .end local v0           #value:J
    :cond_1
    invoke-static {p0}, Lcom/htc/gson/JsonPrimitive;->isFloatingPoint(Lcom/htc/gson/JsonPrimitive;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 426
    invoke-virtual {p0}, Lcom/htc/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 427
    .restart local v0       #value:J
    ushr-long v2, v0, v4

    xor-long/2addr v2, v0

    long-to-int v2, v2

    goto :goto_0

    .line 429
    .end local v0           #value:J
    :cond_2
    iget-object v2, p0, Lcom/htc/gson/JsonPrimitive;->value:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public isBoolean()Z
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/htc/gson/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Boolean;

    return v0
.end method

.method public isNumber()Z
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/htc/gson/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Number;

    return v0
.end method

.method public isString()Z
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/htc/gson/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    return v0
.end method

.method setValue(Ljava/lang/Object;)V
    .locals 2
    .parameter "primitive"

    .prologue
    .line 91
    instance-of v1, p1, Ljava/lang/Character;

    if-eqz v1, :cond_0

    .line 94
    check-cast p1, Ljava/lang/Character;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v0

    .line 95
    .local v0, c:C
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/gson/JsonPrimitive;->value:Ljava/lang/Object;

    .line 101
    .end local v0           #c:C
    :goto_0
    return-void

    .line 97
    .restart local p1
    :cond_0
    instance-of v1, p1, Ljava/lang/Number;

    if-nez v1, :cond_1

    invoke-static {p1}, Lcom/htc/gson/JsonPrimitive;->isPrimitiveOrString(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lcom/htc/gson/Preconditions;->checkArgument(Z)V

    .line 99
    iput-object p1, p0, Lcom/htc/gson/JsonPrimitive;->value:Ljava/lang/Object;

    goto :goto_0

    .line 97
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected toString(Ljava/lang/Appendable;Lcom/htc/gson/Escaper;)V
    .locals 2
    .parameter "sb"
    .parameter "escaper"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x22

    .line 388
    invoke-virtual {p0}, Lcom/htc/gson/JsonPrimitive;->isString()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 390
    iget-object v0, p0, Lcom/htc/gson/JsonPrimitive;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/htc/gson/Escaper;->escapeJsonString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 391
    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 395
    :goto_0
    return-void

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/htc/gson/JsonPrimitive;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_0
.end method
