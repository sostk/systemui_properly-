.class Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager$2;
.super Landroid/os/AsyncTask;
.source "MeizuKeyguardThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->prepareWrapperAndLockScreenViewBackground(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;


# direct methods
.method constructor <init>(Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager$2;->this$0:Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Landroid/view/View;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Integer;

    .prologue
    const/4 v4, 0x0

    .line 226
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager$2;->this$0:Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    invoke-static {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->-get3(Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;)Lcom/meizu/keyguard/theme/LockscreenWrapper;

    move-result-object v0

    if-nez v0, :cond_2

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager$2;->this$0:Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    invoke-static {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->-get4(Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 229
    :try_start_0
    iget-object v0, p0, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager$2;->this$0:Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    invoke-static {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->-get3(Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;)Lcom/meizu/keyguard/theme/LockscreenWrapper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager$2;->this$0:Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    invoke-static {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->-get3(Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;)Lcom/meizu/keyguard/theme/LockscreenWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/keyguard/theme/LockscreenWrapper;->onRelease()V

    .line 231
    iget-object v0, p0, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager$2;->this$0:Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    invoke-static {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->-get3(Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;)Lcom/meizu/keyguard/theme/LockscreenWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/keyguard/theme/LockscreenWrapper;->onDestroy()V

    .line 232
    iget-object v0, p0, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager$2;->this$0:Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->-set1(Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;Lcom/meizu/keyguard/theme/LockscreenWrapper;)Lcom/meizu/keyguard/theme/LockscreenWrapper;

    .line 233
    iget-object v0, p0, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager$2;->this$0:Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->-set0(Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;Landroid/view/View;)Landroid/view/View;

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager$2;->this$0:Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    iget-object v2, p0, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager$2;->this$0:Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    iget-object v3, p0, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager$2;->this$0:Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    invoke-static {v3}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->-get1(Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getWrapper(Landroid/content/Context;)Lcom/meizu/keyguard/theme/LockscreenWrapper;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->-set1(Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;Lcom/meizu/keyguard/theme/LockscreenWrapper;)Lcom/meizu/keyguard/theme/LockscreenWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 238
    :cond_2
    return-object v4

    .line 228
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 224
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager$2;->doInBackground([Ljava/lang/Integer;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/view/View;)V
    .locals 6
    .param p1, "result"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    .line 211
    iget-object v1, p0, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager$2;->this$0:Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    invoke-static {v1}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->-get3(Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;)Lcom/meizu/keyguard/theme/LockscreenWrapper;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 212
    iget-object v1, p0, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager$2;->this$0:Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    iget-object v2, p0, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager$2;->this$0:Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    invoke-static {v2}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->-get3(Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;)Lcom/meizu/keyguard/theme/LockscreenWrapper;

    move-result-object v2

    .line 213
    const-string/jumbo v3, "MeizuKeyguardTheme"

    iget-object v4, p0, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager$2;->this$0:Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    invoke-virtual {v4}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getThemeResourcePath()Ljava/lang/String;

    move-result-object v4

    .line 212
    invoke-virtual {v2, v3, v4, v5, v5}, Lcom/meizu/keyguard/theme/LockscreenWrapper;->load3PartLockView(Ljava/lang/String;Ljava/lang/String;ZZ)Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->-set0(Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;Landroid/view/View;)Landroid/view/View;

    .line 216
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPostExecute mCurLockScreenView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 217
    iget-object v2, p0, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager$2;->this$0:Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    invoke-static {v2}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->-get2(Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;)Landroid/view/View;

    move-result-object v2

    .line 216
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->logKeyguardTheme(Ljava/lang/String;)V

    .line 218
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager$2;->this$0:Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    invoke-static {v1}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->-get0(Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 219
    iget-object v1, p0, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager$2;->this$0:Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    invoke-static {v1}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->-get0(Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager$IThemeChangeCallback;

    invoke-interface {v1}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager$IThemeChangeCallback;->onThemeChange()V

    .line 218
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 209
    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 209
    check-cast p1, Landroid/view/View;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager$2;->onPostExecute(Landroid/view/View;)V

    return-void
.end method
