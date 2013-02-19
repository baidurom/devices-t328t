.class public Lcom/android/internal/telephony/PhoneBookEntry;
.super Ljava/lang/Object;
.source "PhoneBookEntry.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/PhoneBookEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public adnumber:[Ljava/lang/String;

.field public adtype:I

.field public email:Ljava/lang/String;

.field public group:Ljava/lang/String;

.field public hidden:I

.field public index:I

.field public indexAnr:[I

.field public indexEmail:I

.field public number:Ljava/lang/String;

.field public secondtext:Ljava/lang/String;

.field public sip_uri:Ljava/lang/String;

.field public tel_uri:Ljava/lang/String;

.field public text:Ljava/lang/String;

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    new-instance v0, Lcom/android/internal/telephony/PhoneBookEntry$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/PhoneBookEntry$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/PhoneBookEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 132
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBookEntry;->number:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBookEntry;->text:Ljava/lang/String;

    .line 46
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBookEntry;->adnumber:[Ljava/lang/String;

    .line 60
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    .line 133
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "text"
    .parameter "number"

    .prologue
    const/4 v1, 0x2

    .line 127
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBookEntry;->number:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBookEntry;->text:Ljava/lang/String;

    .line 46
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBookEntry;->adnumber:[Ljava/lang/String;

    .line 60
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    .line 128
    iput-object p1, p0, Lcom/android/internal/telephony/PhoneBookEntry;->text:Ljava/lang/String;

    .line 129
    iput-object p2, p0, Lcom/android/internal/telephony/PhoneBookEntry;->number:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 2
    .parameter "text"
    .parameter "number"
    .parameter "adNumber1"
    .parameter "adNumber2"
    .parameter "email"
    .parameter "type"
    .parameter "adType"
    .parameter "hidden"

    .prologue
    const/4 v1, 0x2

    .line 136
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBookEntry;->number:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBookEntry;->text:Ljava/lang/String;

    .line 46
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBookEntry;->adnumber:[Ljava/lang/String;

    .line 60
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    .line 137
    iput-object p1, p0, Lcom/android/internal/telephony/PhoneBookEntry;->text:Ljava/lang/String;

    .line 138
    iput-object p2, p0, Lcom/android/internal/telephony/PhoneBookEntry;->number:Ljava/lang/String;

    .line 139
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBookEntry;->adnumber:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    .line 140
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBookEntry;->adnumber:[Ljava/lang/String;

    const/4 v1, 0x1

    aput-object p4, v0, v1

    .line 141
    iput-object p5, p0, Lcom/android/internal/telephony/PhoneBookEntry;->email:Ljava/lang/String;

    .line 142
    iput p6, p0, Lcom/android/internal/telephony/PhoneBookEntry;->type:I

    .line 143
    iput p7, p0, Lcom/android/internal/telephony/PhoneBookEntry;->adtype:I

    .line 144
    iput p8, p0, Lcom/android/internal/telephony/PhoneBookEntry;->hidden:I

    .line 145
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 159
    const-string v1, ""

    iput-object v1, p0, Lcom/android/internal/telephony/PhoneBookEntry;->number:Ljava/lang/String;

    .line 160
    iput v3, p0, Lcom/android/internal/telephony/PhoneBookEntry;->type:I

    .line 161
    const-string v1, ""

    iput-object v1, p0, Lcom/android/internal/telephony/PhoneBookEntry;->text:Ljava/lang/String;

    .line 162
    iput v3, p0, Lcom/android/internal/telephony/PhoneBookEntry;->hidden:I

    .line 163
    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBookEntry;->group:Ljava/lang/String;

    .line 164
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBookEntry;->adnumber:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBookEntry;->adnumber:[Ljava/lang/String;

    aput-object v2, v1, v0

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    :cond_0
    iput v3, p0, Lcom/android/internal/telephony/PhoneBookEntry;->adtype:I

    .line 168
    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBookEntry;->secondtext:Ljava/lang/String;

    .line 169
    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBookEntry;->email:Ljava/lang/String;

    .line 170
    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBookEntry;->sip_uri:Ljava/lang/String;

    .line 171
    iput-object v2, p0, Lcom/android/internal/telephony/PhoneBookEntry;->tel_uri:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBookEntry;->text:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBookEntry;->number:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.android.internal.telephony.PhoneBookEntry: { index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBookEntry;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/PhoneBookEntry;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", text: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBookEntry;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hidden: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/PhoneBookEntry;->hidden:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", group: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBookEntry;->group:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", adnumber1: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBookEntry;->adnumber:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", adnumber2: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBookEntry;->adnumber:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", adtype: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/PhoneBookEntry;->adtype:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", secondtext: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBookEntry;->secondtext:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", email: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBookEntry;->email:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sip_uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBookEntry;->sip_uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tel_uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBookEntry;->tel_uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBookEntry;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBookEntry;->number:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBookEntry;->adnumber:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBookEntry;->adnumber:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBookEntry;->email:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    iget v0, p0, Lcom/android/internal/telephony/PhoneBookEntry;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    iget v0, p0, Lcom/android/internal/telephony/PhoneBookEntry;->adtype:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    iget v0, p0, Lcom/android/internal/telephony/PhoneBookEntry;->hidden:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    return-void
.end method
