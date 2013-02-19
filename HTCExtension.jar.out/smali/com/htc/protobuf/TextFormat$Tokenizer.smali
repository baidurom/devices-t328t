.class final Lcom/htc/protobuf/TextFormat$Tokenizer;
.super Ljava/lang/Object;
.source "TextFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/protobuf/TextFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Tokenizer"
.end annotation


# static fields
.field private static final DOUBLE_INFINITY:Ljava/util/regex/Pattern;

.field private static final FLOAT_INFINITY:Ljava/util/regex/Pattern;

.field private static final FLOAT_NAN:Ljava/util/regex/Pattern;

.field private static final TOKEN:Ljava/util/regex/Pattern;

.field private static final WHITESPACE:Ljava/util/regex/Pattern;


# instance fields
.field private column:I

.field private currentToken:Ljava/lang/String;

.field private line:I

.field private final matcher:Ljava/util/regex/Matcher;

.field private pos:I

.field private previousColumn:I

.field private previousLine:I

.field private final text:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x2

    .line 461
    const-string v0, "(\\s|(#.*$))++"

    invoke-static {v0, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/htc/protobuf/TextFormat$Tokenizer;->WHITESPACE:Ljava/util/regex/Pattern;

    .line 463
    const-string v0, "[a-zA-Z_][0-9a-zA-Z_+-]*+|[0-9+-][0-9a-zA-Z_.+-]*+|\"([^\"\n\\\\]|\\\\.)*+(\"|\\\\?$)|\'([^\"\n\\\\]|\\\\.)*+(\'|\\\\?$)"

    invoke-static {v0, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/htc/protobuf/TextFormat$Tokenizer;->TOKEN:Ljava/util/regex/Pattern;

    .line 470
    const-string v0, "-?inf(inity)?"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/htc/protobuf/TextFormat$Tokenizer;->DOUBLE_INFINITY:Ljava/util/regex/Pattern;

    .line 473
    const-string v0, "-?inf(inity)?f?"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/htc/protobuf/TextFormat$Tokenizer;->FLOAT_INFINITY:Ljava/util/regex/Pattern;

    .line 476
    const-string v0, "nanf?"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/htc/protobuf/TextFormat$Tokenizer;->FLOAT_NAN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    const/4 v0, 0x0

    .line 481
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 448
    iput v0, p0, Lcom/htc/protobuf/TextFormat$Tokenizer;->pos:I

    .line 451
    iput v0, p0, Lcom/htc/protobuf/TextFormat$Tokenizer;->line:I

    .line 452
    iput v0, p0, Lcom/htc/protobuf/TextFormat$Tokenizer;->column:I

    .line 456
    iput v0, p0, Lcom/htc/protobuf/TextFormat$Tokenizer;->previousLine:I

    .line 457
    iput v0, p0, Lcom/htc/protobuf/TextFormat$Tokenizer;->previousColumn:I

    .line 482
    iput-object p1, p0, Lcom/htc/protobuf/TextFormat$Tokenizer;->text:Ljava/lang/CharSequence;

    .line 483
    sget-object v0, Lcom/htc/protobuf/TextFormat$Tokenizer;->WHITESPACE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/protobuf/TextFormat$Tokenizer;->matcher:Ljava/util/regex/Matcher;

    .line 484
    invoke-direct {p0}, Lcom/htc/protobuf/TextFormat$Tokenizer;->skipWhitespace()V

    .line 485
    invoke-virtual {p0}, Lcom/htc/protobuf/TextFormat$Tokenizer;->nextToken()V

    .line 486
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/CharSequence;Lcom/htc/protobuf/TextFormat$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 442
    invoke-direct {p0, p1}, Lcom/htc/protobuf/TextFormat$Tokenizer;-><init>(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private floatParseException(Ljava/lang/NumberFormatException;)Lcom/htc/protobuf/TextFormat$ParseException;
    .locals 2
    .parameter "e"

    .prologue
    .line 859
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t parse number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/TextFormat$Tokenizer;->parseException(Ljava/lang/String;)Lcom/htc/protobuf/TextFormat$ParseException;

    move-result-object v0

    return-object v0
.end method

.method private integerParseException(Ljava/lang/NumberFormatException;)Lcom/htc/protobuf/TextFormat$ParseException;
    .locals 2
    .parameter "e"

    .prologue
    .line 851
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t parse integer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/TextFormat$Tokenizer;->parseException(Ljava/lang/String;)Lcom/htc/protobuf/TextFormat$ParseException;

    move-result-object v0

    return-object v0
.end method

.method private skipWhitespace()V
    .locals 3

    .prologue
    .line 541
    iget-object v0, p0, Lcom/htc/protobuf/TextFormat$Tokenizer;->matcher:Ljava/util/regex/Matcher;

    sget-object v1, Lcom/htc/protobuf/TextFormat$Tokenizer;->WHITESPACE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 542
    iget-object v0, p0, Lcom/htc/protobuf/TextFormat$Tokenizer;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/htc/protobuf/TextFormat$Tokenizer;->matcher:Ljava/util/regex/Matcher;

    iget-object v1, p0, Lcom/htc/protobuf/TextFormat$Tokenizer;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    iget-object v2, p0, Lcom/htc/protobuf/TextFormat$Tokenizer;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->regionEnd()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 545
    :cond_0
    return-void
.end method


# virtual methods
.method public atEnd()Z
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/htc/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public consume(Ljava/lang/String;)V
    .locals 2
    .parameter "token"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/TextFormat$ParseException;
        }
    .end annotation

    .prologue
    .line 573
    invoke-virtual {p0, p1}, Lcom/htc/protobuf/TextFormat$Tokenizer;->tryConsume(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 574
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/TextFormat$Tokenizer;->parseException(Ljava/lang/String;)Lcom/htc/protobuf/TextFormat$ParseException;

    move-result-object v0

    throw v0

    .line 576
    :cond_0
    return-void
.end method

.method public consumeBoolean()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/TextFormat$ParseException;
        }
    .end annotation

    .prologue
    .line 761
    iget-object v0, p0, Lcom/htc/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 762
    invoke-virtual {p0}, Lcom/htc/protobuf/TextFormat$Tokenizer;->nextToken()V

    .line 763
    const/4 v0, 0x1

    .line 766
    :goto_0
    return v0

    .line 764
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 765
    invoke-virtual {p0}, Lcom/htc/protobuf/TextFormat$Tokenizer;->nextToken()V

    .line 766
    const/4 v0, 0x0

    goto :goto_0

    .line 768
    :cond_1
    const-string v0, "Expected \"true\" or \"false\"."

    invoke-virtual {p0, v0}, Lcom/htc/protobuf/TextFormat$Tokenizer;->parseException(Ljava/lang/String;)Lcom/htc/protobuf/TextFormat$ParseException;

    move-result-object v0

    throw v0
.end method

.method public consumeByteString()Lcom/htc/protobuf/ByteString;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/TextFormat$ParseException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 794
    iget-object v4, p0, Lcom/htc/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/htc/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 796
    .local v2, quote:C
    :cond_0
    const/16 v4, 0x22

    if-eq v2, v4, :cond_1

    const/16 v4, 0x27

    if-eq v2, v4, :cond_1

    .line 797
    const-string v4, "Expected string."

    invoke-virtual {p0, v4}, Lcom/htc/protobuf/TextFormat$Tokenizer;->parseException(Ljava/lang/String;)Lcom/htc/protobuf/TextFormat$ParseException;

    move-result-object v4

    throw v4

    .line 800
    :cond_1
    iget-object v4, p0, Lcom/htc/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_2

    iget-object v4, p0, Lcom/htc/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v2, :cond_3

    .line 802
    :cond_2
    const-string v4, "String missing ending quote."

    invoke-virtual {p0, v4}, Lcom/htc/protobuf/TextFormat$Tokenizer;->parseException(Ljava/lang/String;)Lcom/htc/protobuf/TextFormat$ParseException;

    move-result-object v4

    throw v4

    .line 806
    :cond_3
    :try_start_0
    iget-object v4, p0, Lcom/htc/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/htc/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 808
    .local v1, escaped:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/protobuf/TextFormat;->unescapeBytes(Ljava/lang/CharSequence;)Lcom/htc/protobuf/ByteString;

    move-result-object v3

    .line 809
    .local v3, result:Lcom/htc/protobuf/ByteString;
    invoke-virtual {p0}, Lcom/htc/protobuf/TextFormat$Tokenizer;->nextToken()V
    :try_end_0
    .catch Lcom/htc/protobuf/TextFormat$InvalidEscapeSequenceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 810
    return-object v3

    .line 811
    .end local v1           #escaped:Ljava/lang/String;
    .end local v3           #result:Lcom/htc/protobuf/ByteString;
    :catch_0
    move-exception v0

    .line 812
    .local v0, e:Lcom/htc/protobuf/TextFormat$InvalidEscapeSequenceException;
    invoke-virtual {v0}, Lcom/htc/protobuf/TextFormat$InvalidEscapeSequenceException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/htc/protobuf/TextFormat$Tokenizer;->parseException(Ljava/lang/String;)Lcom/htc/protobuf/TextFormat$ParseException;

    move-result-object v4

    throw v4
.end method

.method public consumeDouble()D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/TextFormat$ParseException;
        }
    .end annotation

    .prologue
    .line 705
    sget-object v4, Lcom/htc/protobuf/TextFormat$Tokenizer;->DOUBLE_INFINITY:Ljava/util/regex/Pattern;

    iget-object v5, p0, Lcom/htc/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 706
    iget-object v4, p0, Lcom/htc/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 707
    .local v1, negative:Z
    invoke-virtual {p0}, Lcom/htc/protobuf/TextFormat$Tokenizer;->nextToken()V

    .line 708
    if-eqz v1, :cond_0

    const-wide/high16 v4, -0x10

    .line 717
    .end local v1           #negative:Z
    :goto_0
    return-wide v4

    .line 708
    .restart local v1       #negative:Z
    :cond_0
    const-wide/high16 v4, 0x7ff0

    goto :goto_0

    .line 710
    .end local v1           #negative:Z
    :cond_1
    iget-object v4, p0, Lcom/htc/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    const-string v5, "nan"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 711
    invoke-virtual {p0}, Lcom/htc/protobuf/TextFormat$Tokenizer;->nextToken()V

    .line 712
    const-wide/high16 v4, 0x7ff8

    goto :goto_0

    .line 715
    :cond_2
    :try_start_0
    iget-object v4, p0, Lcom/htc/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 716
    .local v2, result:D
    invoke-virtual {p0}, Lcom/htc/protobuf/TextFormat$Tokenizer;->nextToken()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v4, v2

    .line 717
    goto :goto_0

    .line 718
    .end local v2           #result:D
    :catch_0
    move-exception v0

    .line 719
    .local v0, e:Ljava/lang/NumberFormatException;
    invoke-direct {p0, v0}, Lcom/htc/protobuf/TextFormat$Tokenizer;->floatParseException(Ljava/lang/NumberFormatException;)Lcom/htc/protobuf/TextFormat$ParseException;

    move-result-object v4

    throw v4
.end method

.method public consumeFloat()F
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/TextFormat$ParseException;
        }
    .end annotation

    .prologue
    .line 734
    sget-object v3, Lcom/htc/protobuf/TextFormat$Tokenizer;->FLOAT_INFINITY:Ljava/util/regex/Pattern;

    iget-object v4, p0, Lcom/htc/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 735
    iget-object v3, p0, Lcom/htc/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 736
    .local v1, negative:Z
    invoke-virtual {p0}, Lcom/htc/protobuf/TextFormat$Tokenizer;->nextToken()V

    .line 737
    if-eqz v1, :cond_0

    const/high16 v3, -0x80

    .line 746
    .end local v1           #negative:Z
    :goto_0
    return v3

    .line 737
    .restart local v1       #negative:Z
    :cond_0
    const/high16 v3, 0x7f80

    goto :goto_0

    .line 739
    .end local v1           #negative:Z
    :cond_1
    sget-object v3, Lcom/htc/protobuf/TextFormat$Tokenizer;->FLOAT_NAN:Ljava/util/regex/Pattern;

    iget-object v4, p0, Lcom/htc/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 740
    invoke-virtual {p0}, Lcom/htc/protobuf/TextFormat$Tokenizer;->nextToken()V

    .line 741
    const/high16 v3, 0x7fc0

    goto :goto_0

    .line 744
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/htc/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 745
    .local v2, result:F
    invoke-virtual {p0}, Lcom/htc/protobuf/TextFormat$Tokenizer;->nextToken()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v2

    .line 746
    goto :goto_0

    .line 747
    .end local v2           #result:F
    :catch_0
    move-exception v0

    .line 748
    .local v0, e:Ljava/lang/NumberFormatException;
    invoke-direct {p0, v0}, Lcom/htc/protobuf/TextFormat$Tokenizer;->floatParseException(Ljava/lang/NumberFormatException;)Lcom/htc/protobuf/TextFormat$ParseException;

    move-result-object v3

    throw v3
.end method

.method public consumeIdentifier()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/TextFormat$ParseException;
        }
    .end annotation

    .prologue
    .line 605
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/htc/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 606
    iget-object v3, p0, Lcom/htc/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 607
    .local v0, c:C
    const/16 v3, 0x61

    if-gt v3, v0, :cond_0

    const/16 v3, 0x7a

    if-le v0, v3, :cond_3

    :cond_0
    const/16 v3, 0x41

    if-gt v3, v0, :cond_1

    const/16 v3, 0x5a

    if-le v0, v3, :cond_3

    :cond_1
    const/16 v3, 0x30

    if-gt v3, v0, :cond_2

    const/16 v3, 0x39

    if-le v0, v3, :cond_3

    :cond_2
    const/16 v3, 0x5f

    if-eq v0, v3, :cond_3

    const/16 v3, 0x2e

    if-ne v0, v3, :cond_4

    .line 605
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 613
    :cond_4
    const-string v3, "Expected identifier."

    invoke-virtual {p0, v3}, Lcom/htc/protobuf/TextFormat$Tokenizer;->parseException(Ljava/lang/String;)Lcom/htc/protobuf/TextFormat$ParseException;

    move-result-object v3

    throw v3

    .line 617
    .end local v0           #c:C
    :cond_5
    iget-object v2, p0, Lcom/htc/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    .line 618
    .local v2, result:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/protobuf/TextFormat$Tokenizer;->nextToken()V

    .line 619
    return-object v2
.end method

.method public consumeInt32()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/TextFormat$ParseException;
        }
    .end annotation

    .prologue
    .line 632
    :try_start_0
    iget-object v2, p0, Lcom/htc/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-static {v2}, Lcom/htc/protobuf/TextFormat;->parseInt32(Ljava/lang/String;)I

    move-result v1

    .line 633
    .local v1, result:I
    invoke-virtual {p0}, Lcom/htc/protobuf/TextFormat$Tokenizer;->nextToken()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 634
    return v1

    .line 635
    .end local v1           #result:I
    :catch_0
    move-exception v0

    .line 636
    .local v0, e:Ljava/lang/NumberFormatException;
    invoke-direct {p0, v0}, Lcom/htc/protobuf/TextFormat$Tokenizer;->integerParseException(Ljava/lang/NumberFormatException;)Lcom/htc/protobuf/TextFormat$ParseException;

    move-result-object v2

    throw v2
.end method

.method public consumeInt64()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/TextFormat$ParseException;
        }
    .end annotation

    .prologue
    .line 668
    :try_start_0
    iget-object v3, p0, Lcom/htc/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-static {v3}, Lcom/htc/protobuf/TextFormat;->parseInt64(Ljava/lang/String;)J

    move-result-wide v1

    .line 669
    .local v1, result:J
    invoke-virtual {p0}, Lcom/htc/protobuf/TextFormat$Tokenizer;->nextToken()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 670
    return-wide v1

    .line 671
    .end local v1           #result:J
    :catch_0
    move-exception v0

    .line 672
    .local v0, e:Ljava/lang/NumberFormatException;
    invoke-direct {p0, v0}, Lcom/htc/protobuf/TextFormat$Tokenizer;->integerParseException(Ljava/lang/NumberFormatException;)Lcom/htc/protobuf/TextFormat$ParseException;

    move-result-object v3

    throw v3
.end method

.method public consumeString()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/TextFormat$ParseException;
        }
    .end annotation

    .prologue
    .line 781
    invoke-virtual {p0}, Lcom/htc/protobuf/TextFormat$Tokenizer;->consumeByteString()Lcom/htc/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public consumeUInt32()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/TextFormat$ParseException;
        }
    .end annotation

    .prologue
    .line 650
    :try_start_0
    iget-object v2, p0, Lcom/htc/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-static {v2}, Lcom/htc/protobuf/TextFormat;->parseUInt32(Ljava/lang/String;)I

    move-result v1

    .line 651
    .local v1, result:I
    invoke-virtual {p0}, Lcom/htc/protobuf/TextFormat$Tokenizer;->nextToken()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 652
    return v1

    .line 653
    .end local v1           #result:I
    :catch_0
    move-exception v0

    .line 654
    .local v0, e:Ljava/lang/NumberFormatException;
    invoke-direct {p0, v0}, Lcom/htc/protobuf/TextFormat$Tokenizer;->integerParseException(Ljava/lang/NumberFormatException;)Lcom/htc/protobuf/TextFormat$ParseException;

    move-result-object v2

    throw v2
.end method

.method public consumeUInt64()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/TextFormat$ParseException;
        }
    .end annotation

    .prologue
    .line 686
    :try_start_0
    iget-object v3, p0, Lcom/htc/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-static {v3}, Lcom/htc/protobuf/TextFormat;->parseUInt64(Ljava/lang/String;)J

    move-result-wide v1

    .line 687
    .local v1, result:J
    invoke-virtual {p0}, Lcom/htc/protobuf/TextFormat$Tokenizer;->nextToken()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 688
    return-wide v1

    .line 689
    .end local v1           #result:J
    :catch_0
    move-exception v0

    .line 690
    .local v0, e:Ljava/lang/NumberFormatException;
    invoke-direct {p0, v0}, Lcom/htc/protobuf/TextFormat$Tokenizer;->integerParseException(Ljava/lang/NumberFormatException;)Lcom/htc/protobuf/TextFormat$ParseException;

    move-result-object v3

    throw v3
.end method

.method public lookingAtInteger()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 587
    iget-object v2, p0, Lcom/htc/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 592
    :cond_0
    :goto_0
    return v1

    .line 591
    :cond_1
    iget-object v2, p0, Lcom/htc/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 592
    .local v0, c:C
    const/16 v2, 0x30

    if-gt v2, v0, :cond_2

    const/16 v2, 0x39

    if-le v0, v2, :cond_3

    :cond_2
    const/16 v2, 0x2d

    if-eq v0, v2, :cond_3

    const/16 v2, 0x2b

    if-ne v0, v2, :cond_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public nextToken()V
    .locals 3

    .prologue
    .line 503
    iget v0, p0, Lcom/htc/protobuf/TextFormat$Tokenizer;->line:I

    iput v0, p0, Lcom/htc/protobuf/TextFormat$Tokenizer;->previousLine:I

    .line 504
    iget v0, p0, Lcom/htc/protobuf/TextFormat$Tokenizer;->column:I

    iput v0, p0, Lcom/htc/protobuf/TextFormat$Tokenizer;->previousColumn:I

    .line 507
    :goto_0
    iget v0, p0, Lcom/htc/protobuf/TextFormat$Tokenizer;->pos:I

    iget-object v1, p0, Lcom/htc/protobuf/TextFormat$Tokenizer;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->regionStart()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 508
    iget-object v0, p0, Lcom/htc/protobuf/TextFormat$Tokenizer;->text:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/htc/protobuf/TextFormat$Tokenizer;->pos:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 509
    iget v0, p0, Lcom/htc/protobuf/TextFormat$Tokenizer;->line:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/protobuf/TextFormat$Tokenizer;->line:I

    .line 510
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/protobuf/TextFormat$Tokenizer;->column:I

    .line 514
    :goto_1
    iget v0, p0, Lcom/htc/protobuf/TextFormat$Tokenizer;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/protobuf/TextFormat$Tokenizer;->pos:I

    goto :goto_0

    .line 512
    :cond_0
    iget v0, p0, Lcom/htc/protobuf/TextFormat$Tokenizer;->column:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/protobuf/TextFormat$Tokenizer;->column:I

    goto :goto_1

    .line 518
    :cond_1
    iget-object v0, p0, Lcom/htc/protobuf/TextFormat$Tokenizer;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->regionStart()I

    move-result v0

    iget-object v1, p0, Lcom/htc/protobuf/TextFormat$Tokenizer;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->regionEnd()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 520
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    .line 534
    :goto_2
    return-void

    .line 522
    :cond_2
    iget-object v0, p0, Lcom/htc/protobuf/TextFormat$Tokenizer;->matcher:Ljava/util/regex/Matcher;

    sget-object v1, Lcom/htc/protobuf/TextFormat$Tokenizer;->TOKEN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 523
    iget-object v0, p0, Lcom/htc/protobuf/TextFormat$Tokenizer;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 524
    iget-object v0, p0, Lcom/htc/protobuf/TextFormat$Tokenizer;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    .line 525
    iget-object v0, p0, Lcom/htc/protobuf/TextFormat$Tokenizer;->matcher:Ljava/util/regex/Matcher;

    iget-object v1, p0, Lcom/htc/protobuf/TextFormat$Tokenizer;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    iget-object v2, p0, Lcom/htc/protobuf/TextFormat$Tokenizer;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->regionEnd()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 532
    :goto_3
    invoke-direct {p0}, Lcom/htc/protobuf/TextFormat$Tokenizer;->skipWhitespace()V

    goto :goto_2

    .line 528
    :cond_3
    iget-object v0, p0, Lcom/htc/protobuf/TextFormat$Tokenizer;->text:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/htc/protobuf/TextFormat$Tokenizer;->pos:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    .line 529
    iget-object v0, p0, Lcom/htc/protobuf/TextFormat$Tokenizer;->matcher:Ljava/util/regex/Matcher;

    iget v1, p0, Lcom/htc/protobuf/TextFormat$Tokenizer;->pos:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/htc/protobuf/TextFormat$Tokenizer;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->regionEnd()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    goto :goto_3
.end method

.method public parseException(Ljava/lang/String;)Lcom/htc/protobuf/TextFormat$ParseException;
    .locals 3
    .parameter "description"

    .prologue
    .line 826
    new-instance v0, Lcom/htc/protobuf/TextFormat$ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/htc/protobuf/TextFormat$Tokenizer;->line:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/protobuf/TextFormat$Tokenizer;->column:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/protobuf/TextFormat$ParseException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public parseExceptionPreviousToken(Ljava/lang/String;)Lcom/htc/protobuf/TextFormat$ParseException;
    .locals 3
    .parameter "description"

    .prologue
    .line 841
    new-instance v0, Lcom/htc/protobuf/TextFormat$ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/htc/protobuf/TextFormat$Tokenizer;->previousLine:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/protobuf/TextFormat$Tokenizer;->previousColumn:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/protobuf/TextFormat$ParseException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public tryConsume(Ljava/lang/String;)Z
    .locals 1
    .parameter "token"

    .prologue
    .line 556
    iget-object v0, p0, Lcom/htc/protobuf/TextFormat$Tokenizer;->currentToken:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 557
    invoke-virtual {p0}, Lcom/htc/protobuf/TextFormat$Tokenizer;->nextToken()V

    .line 558
    const/4 v0, 0x1

    .line 560
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
