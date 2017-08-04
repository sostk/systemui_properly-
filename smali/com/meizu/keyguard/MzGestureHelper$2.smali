.class Lcom/meizu/keyguard/MzGestureHelper$2;
.super Landroid/database/ContentObserver;
.source "MzGestureHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/keyguard/MzGestureHelper;->registerGestureObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/keyguard/MzGestureHelper;

.field final synthetic val$resolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/meizu/keyguard/MzGestureHelper;Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/keyguard/MzGestureHelper;
    .param p2, "$anonymous0"    # Landroid/os/Handler;
    .param p3, "val$resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/meizu/keyguard/MzGestureHelper$2;->this$0:Lcom/meizu/keyguard/MzGestureHelper;

    iput-object p3, p0, Lcom/meizu/keyguard/MzGestureHelper$2;->val$resolver:Landroid/content/ContentResolver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 218
    iget-object v2, p0, Lcom/meizu/keyguard/MzGestureHelper$2;->this$0:Lcom/meizu/keyguard/MzGestureHelper;

    invoke-static {v2, v3}, Lcom/meizu/keyguard/MzGestureHelper;->-set2(Lcom/meizu/keyguard/MzGestureHelper;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    .line 221
    iget-object v2, p0, Lcom/meizu/keyguard/MzGestureHelper$2;->val$resolver:Landroid/content/ContentResolver;

    .line 222
    const-string/jumbo v3, "mz_quick_wakeup_slide_right_package_detail"

    .line 219
    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 223
    .local v1, "componentStr":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 224
    const-string/jumbo v2, "MzGestureHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onChange componentStr = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, "component":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 228
    iget-object v2, p0, Lcom/meizu/keyguard/MzGestureHelper$2;->this$0:Lcom/meizu/keyguard/MzGestureHelper;

    new-instance v3, Landroid/content/ComponentName;

    .line 229
    aget-object v4, v0, v5

    const/4 v5, 0x1

    aget-object v5, v0, v5

    .line 228
    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/meizu/keyguard/MzGestureHelper;->-set2(Lcom/meizu/keyguard/MzGestureHelper;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    .line 231
    const-string/jumbo v2, "MzGestureHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onChange mSlideRightComponent = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 232
    iget-object v4, p0, Lcom/meizu/keyguard/MzGestureHelper$2;->this$0:Lcom/meizu/keyguard/MzGestureHelper;

    invoke-static {v4}, Lcom/meizu/keyguard/MzGestureHelper;->-get2(Lcom/meizu/keyguard/MzGestureHelper;)Landroid/content/ComponentName;

    move-result-object v4

    .line 231
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    .end local v0    # "component":[Ljava/lang/String;
    :cond_0
    return-void
.end method
