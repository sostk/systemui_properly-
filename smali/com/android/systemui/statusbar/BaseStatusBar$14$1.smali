.class Lcom/android/systemui/statusbar/BaseStatusBar$14$1;
.super Ljava/lang/Object;
.source "BaseStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/BaseStatusBar$14;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/BaseStatusBar$14;

.field final synthetic val$pkg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar$14;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/BaseStatusBar$14;
    .param p2, "val$pkg"    # Ljava/lang/String;

    .prologue
    .line 3375
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$14$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$14;

    iput-object p2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$14$1;->val$pkg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 3378
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$14$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$14;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar$14;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    .line 3379
    const-string/jumbo v3, "access_control"

    .line 3378
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmeizu/security/AccessControlManager;

    .line 3381
    .local v1, "acm":Lmeizu/security/AccessControlManager;
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.content.pm.CONFIRM_ACCESS_APPCATONS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3382
    .local v0, "accessAppIntent":Landroid/content/Intent;
    iget-object v2, v0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$14$1;->val$pkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/IntentExt;->setAccessPackageName(Ljava/lang/String;)V

    .line 3383
    iget-object v2, v0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    .line 3384
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$14$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$14;

    iget-object v3, v3, Lcom/android/systemui/statusbar/BaseStatusBar$14;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$14$1;->val$pkg:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->-wrap0(Lcom/android/systemui/statusbar/BaseStatusBar;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3383
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/IntentExt;->setAccessPackageLabel(Ljava/lang/String;)V

    .line 3385
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3386
    const v2, 0x8000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3388
    iget-object v2, v0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    const/16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/content/IntentExt;->addMeizuFlags(I)V

    .line 3389
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$14$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$14;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar$14;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 3377
    return-void
.end method
