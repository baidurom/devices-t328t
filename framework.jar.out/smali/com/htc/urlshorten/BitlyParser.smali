.class public Lcom/htc/urlshorten/BitlyParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "BitlyParser.java"


# static fields
.field private static final BITLY_URL:Ljava/lang/String; = "http://api.bit.ly/shorten?"

.field private static final PARAM_API_KEY:Ljava/lang/String; = "apiKey"

.field private static final PARAM_API_KEY_VALUE:Ljava/lang/String; = "R_73181003c01f32ec9a87c8916e6e0cee"

.field private static final PARAM_EQUAL:Ljava/lang/String; = "="

.field private static final PARAM_FORMAT:Ljava/lang/String; = "format"

.field private static final PARAM_FORMAT_VALUE:Ljava/lang/String; = "xml"

.field private static final PARAM_LOGIN:Ljava/lang/String; = "login"

.field private static final PARAM_LOGIN_VALUE:Ljava/lang/String; = "isatohon"

.field private static final PARAM_LONG_URL:Ljava/lang/String; = "longUrl"

.field private static final PARAM_SEPARATOR:Ljava/lang/String; = "&"

.field private static final PARAM_VERSION:Ljava/lang/String; = "version"

.field private static final PARAM_VERSION_VALUE:Ljava/lang/String; = "2.0.1"

.field private static final PREFIX_ERROR_CODE:Ljava/lang/String; = "errorCode"

.field private static final PREFIX_ERROR_MESSAGE:Ljava/lang/String; = "errorMessage"

.field private static final PREFIX_SHORT_URL:Ljava/lang/String; = "shortUrl"

.field private static final PREFIX_STATUS_CODE:Ljava/lang/String; = "statusCode"

.field private static final TIMEOUT:I = 0xfa0

.field public static final VALUE_SUCCESS:Ljava/lang/String; = "OK"

.field private static sHandler:Landroid/os/Handler;

.field private static sUrl:Ljava/lang/String;

.field private static sWhatError:I

.field private static sWhatSuccess:I

.field private static sWhatTimeout:I


# instance fields
.field private mBitlyInfo:Lcom/htc/urlshorten/BitlyInfo;

.field private mInErrorCode:Z

.field private mInErrorMessage:Z

.field private mInShortUrl:Z

.field private mInStatusCode:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 49
    iput-boolean v0, p0, Lcom/htc/urlshorten/BitlyParser;->mInErrorCode:Z

    .line 50
    iput-boolean v0, p0, Lcom/htc/urlshorten/BitlyParser;->mInErrorMessage:Z

    .line 51
    iput-boolean v0, p0, Lcom/htc/urlshorten/BitlyParser;->mInShortUrl:Z

    .line 52
    iput-boolean v0, p0, Lcom/htc/urlshorten/BitlyParser;->mInStatusCode:Z

    .line 62
    new-instance v0, Lcom/htc/urlshorten/BitlyInfo;

    invoke-direct {v0}, Lcom/htc/urlshorten/BitlyInfo;-><init>()V

    iput-object v0, p0, Lcom/htc/urlshorten/BitlyParser;->mBitlyInfo:Lcom/htc/urlshorten/BitlyInfo;

    .line 63
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/htc/urlshorten/BitlyParser;->sUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 22
    sget v0, Lcom/htc/urlshorten/BitlyParser;->sWhatSuccess:I

    return v0
.end method

.method static synthetic access$200(Lcom/htc/urlshorten/BitlyParser;)Lcom/htc/urlshorten/BitlyInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/htc/urlshorten/BitlyParser;->mBitlyInfo:Lcom/htc/urlshorten/BitlyInfo;

    return-object v0
.end method

.method static synthetic access$300()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/htc/urlshorten/BitlyParser;->sHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400()I
    .locals 1

    .prologue
    .line 22
    sget v0, Lcom/htc/urlshorten/BitlyParser;->sWhatTimeout:I

    return v0
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 22
    sget v0, Lcom/htc/urlshorten/BitlyParser;->sWhatError:I

    return v0
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 212
    iget-object v0, p0, Lcom/htc/urlshorten/BitlyParser;->mBitlyInfo:Lcom/htc/urlshorten/BitlyInfo;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/htc/urlshorten/BitlyInfo;->setErrorCode(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/htc/urlshorten/BitlyParser;->mBitlyInfo:Lcom/htc/urlshorten/BitlyInfo;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/htc/urlshorten/BitlyInfo;->setErrorMessage(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/htc/urlshorten/BitlyParser;->mBitlyInfo:Lcom/htc/urlshorten/BitlyInfo;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/htc/urlshorten/BitlyInfo;->setShortUrl(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/htc/urlshorten/BitlyParser;->mBitlyInfo:Lcom/htc/urlshorten/BitlyInfo;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/htc/urlshorten/BitlyInfo;->setStatusCode(Ljava/lang/String;)V

    .line 217
    iput-boolean v2, p0, Lcom/htc/urlshorten/BitlyParser;->mInErrorCode:Z

    .line 218
    iput-boolean v2, p0, Lcom/htc/urlshorten/BitlyParser;->mInErrorMessage:Z

    .line 219
    iput-boolean v2, p0, Lcom/htc/urlshorten/BitlyParser;->mInShortUrl:Z

    .line 220
    iput-boolean v2, p0, Lcom/htc/urlshorten/BitlyParser;->mInStatusCode:Z

    .line 221
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 3
    .parameter "ch"
    .parameter "nStart"
    .parameter "nLength"

    .prologue
    .line 198
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([C)V

    add-int v2, p2, p3

    invoke-virtual {v1, p2, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, str:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/htc/urlshorten/BitlyParser;->mInErrorCode:Z

    if-eqz v1, :cond_1

    .line 201
    iget-object v1, p0, Lcom/htc/urlshorten/BitlyParser;->mBitlyInfo:Lcom/htc/urlshorten/BitlyInfo;

    invoke-virtual {v1, v0}, Lcom/htc/urlshorten/BitlyInfo;->setErrorCode(Ljava/lang/String;)V

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    iget-boolean v1, p0, Lcom/htc/urlshorten/BitlyParser;->mInErrorMessage:Z

    if-eqz v1, :cond_2

    .line 203
    iget-object v1, p0, Lcom/htc/urlshorten/BitlyParser;->mBitlyInfo:Lcom/htc/urlshorten/BitlyInfo;

    invoke-virtual {v1, v0}, Lcom/htc/urlshorten/BitlyInfo;->setErrorMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 204
    :cond_2
    iget-boolean v1, p0, Lcom/htc/urlshorten/BitlyParser;->mInShortUrl:Z

    if-eqz v1, :cond_3

    .line 205
    iget-object v1, p0, Lcom/htc/urlshorten/BitlyParser;->mBitlyInfo:Lcom/htc/urlshorten/BitlyInfo;

    invoke-virtual {v1, v0}, Lcom/htc/urlshorten/BitlyInfo;->setShortUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 206
    :cond_3
    iget-boolean v1, p0, Lcom/htc/urlshorten/BitlyParser;->mInStatusCode:Z

    if-eqz v1, :cond_0

    .line 207
    iget-object v1, p0, Lcom/htc/urlshorten/BitlyParser;->mBitlyInfo:Lcom/htc/urlshorten/BitlyInfo;

    invoke-virtual {v1, v0}, Lcom/htc/urlshorten/BitlyInfo;->setStatusCode(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "strURI"
    .parameter "strLocalName"
    .parameter "strQName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 182
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, str:Ljava/lang/String;
    :goto_0
    const-string v1, "errorCode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 185
    iput-boolean v2, p0, Lcom/htc/urlshorten/BitlyParser;->mInErrorCode:Z

    .line 193
    :cond_0
    :goto_1
    return-void

    .line 182
    .end local v0           #str:Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 186
    .restart local v0       #str:Ljava/lang/String;
    :cond_2
    const-string v1, "errorMessage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 187
    iput-boolean v2, p0, Lcom/htc/urlshorten/BitlyParser;->mInErrorMessage:Z

    goto :goto_1

    .line 188
    :cond_3
    const-string/jumbo v1, "shortUrl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 189
    iput-boolean v2, p0, Lcom/htc/urlshorten/BitlyParser;->mInShortUrl:Z

    goto :goto_1

    .line 190
    :cond_4
    const-string/jumbo v1, "statusCode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    iput-boolean v2, p0, Lcom/htc/urlshorten/BitlyParser;->mInStatusCode:Z

    goto :goto_1
.end method

.method public shortenUrl(Ljava/lang/String;Landroid/os/Handler;III)V
    .locals 4
    .parameter "strUrl"
    .parameter "handler"
    .parameter "whatSuccess"
    .parameter "whatTimeout"
    .parameter "whatError"

    .prologue
    .line 68
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 69
    :cond_0
    const-string v2, "KENLOG"

    const-string v3, "<BitlyParser.getShorterUrl> strUrl incorrect."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 71
    .local v0, msg:Landroid/os/Message;
    sget v2, Lcom/htc/urlshorten/BitlyParser;->sWhatError:I

    iput v2, v0, Landroid/os/Message;->what:I

    .line 72
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 73
    sget-object v2, Lcom/htc/urlshorten/BitlyParser;->sHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 161
    .end local v0           #msg:Landroid/os/Message;
    :goto_0
    return-void

    .line 77
    :cond_1
    invoke-direct {p0}, Lcom/htc/urlshorten/BitlyParser;->init()V

    .line 79
    sput-object p1, Lcom/htc/urlshorten/BitlyParser;->sUrl:Ljava/lang/String;

    .line 80
    sput-object p2, Lcom/htc/urlshorten/BitlyParser;->sHandler:Landroid/os/Handler;

    .line 82
    sput p3, Lcom/htc/urlshorten/BitlyParser;->sWhatSuccess:I

    .line 83
    sput p4, Lcom/htc/urlshorten/BitlyParser;->sWhatTimeout:I

    .line 84
    sput p5, Lcom/htc/urlshorten/BitlyParser;->sWhatError:I

    .line 86
    new-instance v1, Lcom/htc/urlshorten/BitlyParser$1;

    invoke-direct {v1, p0}, Lcom/htc/urlshorten/BitlyParser$1;-><init>(Lcom/htc/urlshorten/BitlyParser;)V

    .line 160
    .local v1, t:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
    .parameter "strURI"
    .parameter "strLocalName"
    .parameter "strQName"
    .parameter "atts"

    .prologue
    const/4 v2, 0x1

    .line 166
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, str:Ljava/lang/String;
    :goto_0
    const-string v1, "errorCode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 169
    iput-boolean v2, p0, Lcom/htc/urlshorten/BitlyParser;->mInErrorCode:Z

    .line 177
    :cond_0
    :goto_1
    return-void

    .line 166
    .end local v0           #str:Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 170
    .restart local v0       #str:Ljava/lang/String;
    :cond_2
    const-string v1, "errorMessage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 171
    iput-boolean v2, p0, Lcom/htc/urlshorten/BitlyParser;->mInErrorMessage:Z

    goto :goto_1

    .line 172
    :cond_3
    const-string/jumbo v1, "shortUrl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 173
    iput-boolean v2, p0, Lcom/htc/urlshorten/BitlyParser;->mInShortUrl:Z

    goto :goto_1

    .line 174
    :cond_4
    const-string/jumbo v1, "statusCode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    iput-boolean v2, p0, Lcom/htc/urlshorten/BitlyParser;->mInStatusCode:Z

    goto :goto_1
.end method
