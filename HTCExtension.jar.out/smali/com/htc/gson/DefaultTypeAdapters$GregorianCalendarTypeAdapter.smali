.class Lcom/htc/gson/DefaultTypeAdapters$GregorianCalendarTypeAdapter;
.super Ljava/lang/Object;
.source "DefaultTypeAdapters.java"

# interfaces
.implements Lcom/htc/gson/JsonSerializer;
.implements Lcom/htc/gson/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/gson/DefaultTypeAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GregorianCalendarTypeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/gson/JsonSerializer",
        "<",
        "Ljava/util/GregorianCalendar;",
        ">;",
        "Lcom/htc/gson/JsonDeserializer",
        "<",
        "Ljava/util/GregorianCalendar;",
        ">;"
    }
.end annotation


# static fields
.field private static final DAY_OF_MONTH:Ljava/lang/String; = "dayOfMonth"

.field private static final HOUR_OF_DAY:Ljava/lang/String; = "hourOfDay"

.field private static final MINUTE:Ljava/lang/String; = "minute"

.field private static final MONTH:Ljava/lang/String; = "month"

.field private static final SECOND:Ljava/lang/String; = "second"

.field private static final YEAR:Ljava/lang/String; = "year"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 302
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/gson/DefaultTypeAdapters$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 302
    invoke-direct {p0}, Lcom/htc/gson/DefaultTypeAdapters$GregorianCalendarTypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
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
    .line 302
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/gson/DefaultTypeAdapters$GregorianCalendarTypeAdapter;->deserialize(Lcom/htc/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/htc/gson/JsonDeserializationContext;)Ljava/util/GregorianCalendar;

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Lcom/htc/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/htc/gson/JsonDeserializationContext;)Ljava/util/GregorianCalendar;
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
    .line 334
    invoke-virtual {p1}, Lcom/htc/gson/JsonElement;->getAsJsonObject()Lcom/htc/gson/JsonObject;

    move-result-object v7

    .line 335
    .local v7, obj:Lcom/htc/gson/JsonObject;
    const-string/jumbo v0, "year"

    invoke-virtual {v7, v0}, Lcom/htc/gson/JsonObject;->get(Ljava/lang/String;)Lcom/htc/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/gson/JsonElement;->getAsInt()I

    move-result v1

    .line 336
    .local v1, year:I
    const-string v0, "month"

    invoke-virtual {v7, v0}, Lcom/htc/gson/JsonObject;->get(Ljava/lang/String;)Lcom/htc/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/gson/JsonElement;->getAsInt()I

    move-result v2

    .line 337
    .local v2, month:I
    const-string v0, "dayOfMonth"

    invoke-virtual {v7, v0}, Lcom/htc/gson/JsonObject;->get(Ljava/lang/String;)Lcom/htc/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/gson/JsonElement;->getAsInt()I

    move-result v3

    .line 338
    .local v3, dayOfMonth:I
    const-string v0, "hourOfDay"

    invoke-virtual {v7, v0}, Lcom/htc/gson/JsonObject;->get(Ljava/lang/String;)Lcom/htc/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/gson/JsonElement;->getAsInt()I

    move-result v4

    .line 339
    .local v4, hourOfDay:I
    const-string v0, "minute"

    invoke-virtual {v7, v0}, Lcom/htc/gson/JsonObject;->get(Ljava/lang/String;)Lcom/htc/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/gson/JsonElement;->getAsInt()I

    move-result v5

    .line 340
    .local v5, minute:I
    const-string v0, "second"

    invoke-virtual {v7, v0}, Lcom/htc/gson/JsonObject;->get(Ljava/lang/String;)Lcom/htc/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/gson/JsonElement;->getAsInt()I

    move-result v6

    .line 341
    .local v6, second:I
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct/range {v0 .. v6}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    return-object v0
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/htc/gson/JsonSerializationContext;)Lcom/htc/gson/JsonElement;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 302
    check-cast p1, Ljava/util/GregorianCalendar;

    .end local p1
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/gson/DefaultTypeAdapters$GregorianCalendarTypeAdapter;->serialize(Ljava/util/GregorianCalendar;Ljava/lang/reflect/Type;Lcom/htc/gson/JsonSerializationContext;)Lcom/htc/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Ljava/util/GregorianCalendar;Ljava/lang/reflect/Type;Lcom/htc/gson/JsonSerializationContext;)Lcom/htc/gson/JsonElement;
    .locals 3
    .parameter "src"
    .parameter "typeOfSrc"
    .parameter "context"

    .prologue
    .line 318
    new-instance v0, Lcom/htc/gson/JsonObject;

    invoke-direct {v0}, Lcom/htc/gson/JsonObject;-><init>()V

    .line 319
    .local v0, obj:Lcom/htc/gson/JsonObject;
    const-string/jumbo v1, "year"

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 320
    const-string v1, "month"

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 321
    const-string v1, "dayOfMonth"

    const/4 v2, 0x5

    invoke-virtual {p1, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 322
    const-string v1, "hourOfDay"

    const/16 v2, 0xb

    invoke-virtual {p1, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 323
    const-string v1, "minute"

    const/16 v2, 0xc

    invoke-virtual {p1, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 324
    const-string v1, "second"

    const/16 v2, 0xd

    invoke-virtual {p1, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 325
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 350
    const-class v0, Lcom/htc/gson/DefaultTypeAdapters$GregorianCalendarTypeAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
