.class public Lcom/meizu/keyguard/KeyguardThemeUtils$KeyguardSlideType;
.super Ljava/lang/Object;
.source "KeyguardThemeUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/keyguard/KeyguardThemeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KeyguardSlideType"
.end annotation


# instance fields
.field mMoveAsAWhole:Z

.field mOrientation:Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_SLIDE_ORIENTATION;

.field mTracks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/keyguard/KeyguardThemeUtils$Track;",
            ">;"
        }
    .end annotation
.end field

.field mUseSystemLockWallpaper:Z

.field final synthetic this$0:Lcom/meizu/keyguard/KeyguardThemeUtils;


# direct methods
.method public constructor <init>(Lcom/meizu/keyguard/KeyguardThemeUtils;Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_SLIDE_ORIENTATION;ZZ)V
    .locals 1
    .param p1, "this$0"    # Lcom/meizu/keyguard/KeyguardThemeUtils;
    .param p2, "orientation"    # Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_SLIDE_ORIENTATION;
    .param p3, "sysemLockWallpaper"    # Z
    .param p4, "moveAsAWhole"    # Z

    .prologue
    .line 213
    iput-object p1, p0, Lcom/meizu/keyguard/KeyguardThemeUtils$KeyguardSlideType;->this$0:Lcom/meizu/keyguard/KeyguardThemeUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/keyguard/KeyguardThemeUtils$KeyguardSlideType;->mTracks:Ljava/util/List;

    .line 226
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/keyguard/KeyguardThemeUtils$KeyguardSlideType;->mUseSystemLockWallpaper:Z

    .line 227
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/keyguard/KeyguardThemeUtils$KeyguardSlideType;->mMoveAsAWhole:Z

    .line 215
    iput-object p2, p0, Lcom/meizu/keyguard/KeyguardThemeUtils$KeyguardSlideType;->mOrientation:Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_SLIDE_ORIENTATION;

    .line 216
    iput-boolean p3, p0, Lcom/meizu/keyguard/KeyguardThemeUtils$KeyguardSlideType;->mUseSystemLockWallpaper:Z

    .line 217
    iput-boolean p4, p0, Lcom/meizu/keyguard/KeyguardThemeUtils$KeyguardSlideType;->mMoveAsAWhole:Z

    .line 214
    return-void
.end method


# virtual methods
.method addTracks(Lcom/meizu/keyguard/KeyguardThemeUtils$Track;)V
    .locals 1
    .param p1, "track"    # Lcom/meizu/keyguard/KeyguardThemeUtils$Track;

    .prologue
    .line 221
    iget-object v0, p0, Lcom/meizu/keyguard/KeyguardThemeUtils$KeyguardSlideType;->mTracks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mOrientation = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 234
    iget-object v4, p0, Lcom/meizu/keyguard/KeyguardThemeUtils$KeyguardSlideType;->mOrientation:Lcom/meizu/keyguard/KeyguardThemeUtils$KEYGUARD_SLIDE_ORIENTATION;

    .line 233
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 234
    const-string/jumbo v4, ", mMoveAsAWhole = "

    .line 233
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 234
    iget-boolean v4, p0, Lcom/meizu/keyguard/KeyguardThemeUtils$KeyguardSlideType;->mMoveAsAWhole:Z

    .line 233
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 235
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/meizu/keyguard/KeyguardThemeUtils$KeyguardSlideType;->mTracks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 236
    iget-object v3, p0, Lcom/meizu/keyguard/KeyguardThemeUtils$KeyguardSlideType;->mTracks:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/keyguard/KeyguardThemeUtils$Track;

    .line 237
    .local v2, "tmp":Lcom/meizu/keyguard/KeyguardThemeUtils$Track;
    if-eqz v2, :cond_0

    .line 238
    const-string/jumbo v3, ", mTrackX = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/meizu/keyguard/KeyguardThemeUtils$Track;->mTrackX:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mTrackY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 239
    iget v4, v2, Lcom/meizu/keyguard/KeyguardThemeUtils$Track;->mTrackY:I

    .line 238
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 239
    const-string/jumbo v4, ", mTriggerDistance = "

    .line 238
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 240
    iget v4, v2, Lcom/meizu/keyguard/KeyguardThemeUtils$Track;->mTriggerDistance:I

    .line 238
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 241
    const-string/jumbo v3, ", mStratX = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/meizu/keyguard/KeyguardThemeUtils$Track;->mStartX:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mStartY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 242
    iget v4, v2, Lcom/meizu/keyguard/KeyguardThemeUtils$Track;->mStartY:I

    .line 241
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 243
    const-string/jumbo v3, ", mStartWidth = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/meizu/keyguard/KeyguardThemeUtils$Track;->mStartWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 244
    const-string/jumbo v4, ", mStartHeight = "

    .line 243
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 244
    iget v4, v2, Lcom/meizu/keyguard/KeyguardThemeUtils$Track;->mStartHeight:I

    .line 243
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 245
    const-string/jumbo v3, ", mEndX = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/meizu/keyguard/KeyguardThemeUtils$Track;->mEndX:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mEndY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 246
    iget v4, v2, Lcom/meizu/keyguard/KeyguardThemeUtils$Track;->mEndY:I

    .line 245
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 247
    const-string/jumbo v3, ", mEndWidth = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/meizu/keyguard/KeyguardThemeUtils$Track;->mEndWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 248
    const-string/jumbo v4, ", mEndHeight = "

    .line 247
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 248
    iget v4, v2, Lcom/meizu/keyguard/KeyguardThemeUtils$Track;->mEndHeight:I

    .line 247
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 249
    const-string/jumbo v3, ", mTarget = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/meizu/keyguard/KeyguardThemeUtils$Track;->mTarget:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 250
    const-string/jumbo v4, ", mUseSystemLockWallpaper = "

    .line 249
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 251
    iget-boolean v4, p0, Lcom/meizu/keyguard/KeyguardThemeUtils$KeyguardSlideType;->mUseSystemLockWallpaper:Z

    .line 249
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 252
    const-string/jumbo v3, ", mWidth = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/meizu/keyguard/KeyguardThemeUtils$Track;->mWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mHeight = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 253
    iget v4, v2, Lcom/meizu/keyguard/KeyguardThemeUtils$Track;->mHeight:I

    .line 252
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 235
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 256
    .end local v2    # "tmp":Lcom/meizu/keyguard/KeyguardThemeUtils$Track;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
