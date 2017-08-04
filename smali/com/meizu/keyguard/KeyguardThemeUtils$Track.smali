.class public Lcom/meizu/keyguard/KeyguardThemeUtils$Track;
.super Ljava/lang/Object;
.source "KeyguardThemeUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/keyguard/KeyguardThemeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Track"
.end annotation


# instance fields
.field public mEndHeight:I

.field public mEndWidth:I

.field public mEndX:I

.field public mEndY:I

.field public mHeight:I

.field public mStartHeight:I

.field public mStartWidth:I

.field public mStartX:I

.field public mStartY:I

.field public mTarget:Ljava/lang/String;

.field public mTrackX:I

.field public mTrackY:I

.field public mTriggerDistance:I

.field public mWidth:I

.field final synthetic this$0:Lcom/meizu/keyguard/KeyguardThemeUtils;


# direct methods
.method public constructor <init>(Lcom/meizu/keyguard/KeyguardThemeUtils;Ljava/lang/String;III)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/keyguard/KeyguardThemeUtils;
    .param p2, "target"    # Ljava/lang/String;
    .param p3, "trackX"    # I
    .param p4, "trackY"    # I
    .param p5, "triggerDistance"    # I

    .prologue
    .line 189
    iput-object p1, p0, Lcom/meizu/keyguard/KeyguardThemeUtils$Track;->this$0:Lcom/meizu/keyguard/KeyguardThemeUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput-object p2, p0, Lcom/meizu/keyguard/KeyguardThemeUtils$Track;->mTarget:Ljava/lang/String;

    .line 191
    iput p3, p0, Lcom/meizu/keyguard/KeyguardThemeUtils$Track;->mTrackX:I

    .line 192
    iput p4, p0, Lcom/meizu/keyguard/KeyguardThemeUtils$Track;->mTrackY:I

    .line 193
    iput p5, p0, Lcom/meizu/keyguard/KeyguardThemeUtils$Track;->mTriggerDistance:I

    .line 189
    return-void
.end method


# virtual methods
.method public setSize(II)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 197
    iput p1, p0, Lcom/meizu/keyguard/KeyguardThemeUtils$Track;->mWidth:I

    .line 198
    iput p2, p0, Lcom/meizu/keyguard/KeyguardThemeUtils$Track;->mHeight:I

    .line 196
    return-void
.end method
