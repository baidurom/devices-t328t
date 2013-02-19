.class Lcom/htc/gson/JsonPrintFormatter$JsonWriter;
.super Ljava/lang/Object;
.source "JsonPrintFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/gson/JsonPrintFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JsonWriter"
.end annotation


# instance fields
.field private level:I

.field private line:Ljava/lang/StringBuilder;

.field final synthetic this$0:Lcom/htc/gson/JsonPrintFormatter;

.field private final writer:Ljava/lang/Appendable;


# direct methods
.method constructor <init>(Lcom/htc/gson/JsonPrintFormatter;Ljava/lang/Appendable;)V
    .locals 1
    .parameter
    .parameter "writer"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->this$0:Lcom/htc/gson/JsonPrintFormatter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p2, p0, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->writer:Ljava/lang/Appendable;

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->level:I

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->line:Ljava/lang/StringBuilder;

    .line 77
    return-void
.end method

.method static synthetic access$300(Lcom/htc/gson/JsonPrintFormatter$JsonWriter;)V
    .locals 0
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->finishLine()V

    return-void
.end method

.method private breakLineIfNeeded()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->breakLineIfThisToNextExceedsLimit(I)V

    .line 125
    return-void
.end method

.method private breakLineIfThisToNextExceedsLimit(I)V
    .locals 3
    .parameter "nextLength"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->getLine()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->this$0:Lcom/htc/gson/JsonPrintFormatter;

    #getter for: Lcom/htc/gson/JsonPrintFormatter;->printMargin:I
    invoke-static {v1}, Lcom/htc/gson/JsonPrintFormatter;->access$000(Lcom/htc/gson/JsonPrintFormatter;)I

    move-result v1

    iget-object v2, p0, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->this$0:Lcom/htc/gson/JsonPrintFormatter;

    #getter for: Lcom/htc/gson/JsonPrintFormatter;->rightMargin:I
    invoke-static {v2}, Lcom/htc/gson/JsonPrintFormatter;->access$100(Lcom/htc/gson/JsonPrintFormatter;)I

    move-result v2

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_0

    .line 129
    invoke-direct {p0}, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->finishLine()V

    .line 131
    :cond_0
    return-void
.end method

.method private createNewLine()V
    .locals 4

    .prologue
    .line 148
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->line:Ljava/lang/StringBuilder;

    .line 149
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->level:I

    if-ge v0, v2, :cond_1

    .line 150
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    iget-object v2, p0, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->this$0:Lcom/htc/gson/JsonPrintFormatter;

    #getter for: Lcom/htc/gson/JsonPrintFormatter;->indentationSize:I
    invoke-static {v2}, Lcom/htc/gson/JsonPrintFormatter;->access$200(Lcom/htc/gson/JsonPrintFormatter;)I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 151
    iget-object v2, p0, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->line:Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 150
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 149
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 154
    .end local v1           #j:I
    :cond_1
    return-void
.end method

.method private finishLine()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->line:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->writer:Ljava/lang/Appendable;

    iget-object v1, p0, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->line:Ljava/lang/StringBuilder;

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    const-string v1, "\n"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 137
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->line:Ljava/lang/StringBuilder;

    .line 138
    return-void
.end method

.method private getLine()Ljava/lang/StringBuilder;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->line:Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    .line 142
    invoke-direct {p0}, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->createNewLine()V

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->line:Ljava/lang/StringBuilder;

    return-object v0
.end method


# virtual methods
.method beginArray()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->breakLineIfNeeded()V

    .line 114
    invoke-direct {p0}, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->getLine()Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 115
    iget v0, p0, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->level:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->level:I

    .line 116
    return-void
.end method

.method beginObject()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->breakLineIfNeeded()V

    .line 103
    invoke-direct {p0}, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->getLine()Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 104
    iget v0, p0, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->level:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->level:I

    .line 105
    return-void
.end method

.method elementSeparator()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->getLine()Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 98
    invoke-direct {p0}, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->breakLineIfNeeded()V

    .line 99
    return-void
.end method

.method endArray()V
    .locals 2

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->getLine()Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 120
    iget v0, p0, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->level:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->level:I

    .line 121
    return-void
.end method

.method endObject()V
    .locals 2

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->getLine()Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 109
    iget v0, p0, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->level:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->level:I

    .line 110
    return-void
.end method

.method fieldSeparator()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->getLine()Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 93
    invoke-direct {p0}, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->breakLineIfNeeded()V

    .line 94
    return-void
.end method

.method key(Ljava/lang/String;)V
    .locals 2
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x22

    .line 80
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->breakLineIfThisToNextExceedsLimit(I)V

    .line 81
    invoke-direct {p0}, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->getLine()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 82
    invoke-direct {p0}, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->getLine()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-direct {p0}, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->getLine()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 84
    return-void
.end method

.method value(Ljava/lang/String;)V
    .locals 1
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->breakLineIfThisToNextExceedsLimit(I)V

    .line 88
    invoke-direct {p0}, Lcom/htc/gson/JsonPrintFormatter$JsonWriter;->getLine()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    return-void
.end method
