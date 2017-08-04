.class Lcom/android/keyguard/KeyguardTransportControlView$Metadata;
.super Ljava/lang/Object;
.source "KeyguardTransportControlView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardTransportControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Metadata"
.end annotation


# instance fields
.field private albumTitle:Ljava/lang/String;

.field private artist:Ljava/lang/String;

.field private bitmap:Landroid/graphics/Bitmap;

.field private duration:J

.field final synthetic this$0:Lcom/android/keyguard/KeyguardTransportControlView;

.field private trackTitle:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->albumTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->artist:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->duration:J

    return-wide v0
.end method

.method static synthetic -get4(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->trackTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->albumTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->artist:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->bitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->duration:J

    return-wide p1
.end method

.method static synthetic -set4(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->trackTitle:Ljava/lang/String;

    return-object p1
.end method

.method constructor <init>(Lcom/android/keyguard/KeyguardTransportControlView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/KeyguardTransportControlView;

    .prologue
    .line 418
    iput-object p1, p0, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 426
    iput-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->artist:Ljava/lang/String;

    .line 427
    iput-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->trackTitle:Ljava/lang/String;

    .line 428
    iput-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->albumTitle:Ljava/lang/String;

    .line 429
    iput-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->bitmap:Landroid/graphics/Bitmap;

    .line 430
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->duration:J

    .line 425
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Metadata[artist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->artist:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " trackTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->trackTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 435
    const-string/jumbo v1, " albumTitle="

    .line 434
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 435
    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->albumTitle:Ljava/lang/String;

    .line 434
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 435
    const-string/jumbo v1, " duration="

    .line 434
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 435
    iget-wide v2, p0, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->duration:J

    .line 434
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 435
    const-string/jumbo v1, "]"

    .line 434
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
