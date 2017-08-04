.class public Lcom/meizu/common/app/SlideNoticeManager;
.super Ljava/lang/Object;
.source "SlideNoticeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/app/SlideNoticeManager$1;,
        Lcom/meizu/common/app/SlideNoticeManager$WorkerHandler;,
        Lcom/meizu/common/app/SlideNoticeManager$NoticeCallBack;,
        Lcom/meizu/common/app/SlideNoticeManager$NoticeRecord;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final LONG_DELAY:I = 0xdac

.field private static final MESSAGE_TIMEOUT:I = 0x1

.field private static final SHORT_DELAY:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "SlideNoticeManager"


# instance fields
.field private mCurActivity:Landroid/app/Activity;

.field private mHandler:Lcom/meizu/common/app/SlideNoticeManager$WorkerHandler;

.field private mNoticeQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/common/app/SlideNoticeManager$NoticeRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/app/SlideNoticeManager;->mNoticeQueue:Ljava/util/ArrayList;

    .line 84
    new-instance v0, Lcom/meizu/common/app/SlideNoticeManager$WorkerHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/meizu/common/app/SlideNoticeManager$WorkerHandler;-><init>(Lcom/meizu/common/app/SlideNoticeManager;Lcom/meizu/common/app/SlideNoticeManager$1;)V

    iput-object v0, p0, Lcom/meizu/common/app/SlideNoticeManager;->mHandler:Lcom/meizu/common/app/SlideNoticeManager$WorkerHandler;

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/common/app/SlideNoticeManager;Lcom/meizu/common/app/SlideNoticeManager$NoticeRecord;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/app/SlideNoticeManager;
    .param p1, "x1"    # Lcom/meizu/common/app/SlideNoticeManager$NoticeRecord;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/meizu/common/app/SlideNoticeManager;->handleTimeout(Lcom/meizu/common/app/SlideNoticeManager$NoticeRecord;)V

    return-void
.end method

.method private cancelNotice(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    const-string/jumbo v1, "SlideNoticeManager"

    .line 165
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "cancelNotice index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v1, p0, Lcom/meizu/common/app/SlideNoticeManager;->mNoticeQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/app/SlideNoticeManager$NoticeRecord;

    .line 167
    .local v0, "record":Lcom/meizu/common/app/SlideNoticeManager$NoticeRecord;
    iget-object v1, v0, Lcom/meizu/common/app/SlideNoticeManager$NoticeRecord;->callback:Lcom/meizu/common/app/SlideNoticeManager$NoticeCallBack;

    invoke-interface {v1}, Lcom/meizu/common/app/SlideNoticeManager$NoticeCallBack;->hide()V

    .line 168
    iget-object v1, p0, Lcom/meizu/common/app/SlideNoticeManager;->mNoticeQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 169
    iget-object v1, p0, Lcom/meizu/common/app/SlideNoticeManager;->mNoticeQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_0

    .line 172
    :goto_0
    return-void

    .line 170
    :cond_0
    invoke-direct {p0}, Lcom/meizu/common/app/SlideNoticeManager;->showNextNotice()V

    goto :goto_0
.end method

.method private handleTimeout(Lcom/meizu/common/app/SlideNoticeManager$NoticeRecord;)V
    .locals 4
    .param p1, "record"    # Lcom/meizu/common/app/SlideNoticeManager$NoticeRecord;

    .prologue
    const-string/jumbo v1, "SlideNoticeManager"

    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Timeout callback="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/meizu/common/app/SlideNoticeManager$NoticeRecord;->callback:Lcom/meizu/common/app/SlideNoticeManager$NoticeCallBack;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v2, p0, Lcom/meizu/common/app/SlideNoticeManager;->mNoticeQueue:Ljava/util/ArrayList;

    monitor-enter v2

    .line 157
    :try_start_0
    iget-object v1, p1, Lcom/meizu/common/app/SlideNoticeManager$NoticeRecord;->callback:Lcom/meizu/common/app/SlideNoticeManager$NoticeCallBack;

    invoke-direct {p0, v1}, Lcom/meizu/common/app/SlideNoticeManager;->indexOfNotice(Lcom/meizu/common/app/SlideNoticeManager$NoticeCallBack;)I

    move-result v0

    .line 158
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 161
    :goto_0
    monitor-exit v2

    .line 162
    return-void

    .line 159
    :cond_0
    invoke-direct {p0, v0}, Lcom/meizu/common/app/SlideNoticeManager;->cancelNotice(I)V

    goto :goto_0

    .line 161
    .end local v0    # "index":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private indexOfNotice(Lcom/meizu/common/app/SlideNoticeManager$NoticeCallBack;)I
    .locals 4
    .param p1, "callback"    # Lcom/meizu/common/app/SlideNoticeManager$NoticeCallBack;

    .prologue
    .line 189
    iget-object v1, p0, Lcom/meizu/common/app/SlideNoticeManager;->mNoticeQueue:Ljava/util/ArrayList;

    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meizu/common/app/SlideNoticeManager$NoticeRecord;>;"
    const/4 v0, 0x0

    .line 191
    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    const/4 v3, -0x1

    .line 196
    return v3

    .line 192
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/common/app/SlideNoticeManager$NoticeRecord;

    .line 193
    .local v2, "record":Lcom/meizu/common/app/SlideNoticeManager$NoticeRecord;
    iget-object v3, v2, Lcom/meizu/common/app/SlideNoticeManager$NoticeRecord;->callback:Lcom/meizu/common/app/SlideNoticeManager$NoticeCallBack;

    if-eq v3, p1, :cond_1

    .line 191
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 194
    :cond_1
    return v0
.end method

.method private removeLastActivityRecord()V
    .locals 4

    .prologue
    .line 241
    iget-object v1, p0, Lcom/meizu/common/app/SlideNoticeManager;->mNoticeQueue:Ljava/util/ArrayList;

    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meizu/common/app/SlideNoticeManager$NoticeRecord;>;"
    const/4 v0, 0x0

    .line 243
    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 250
    return-void

    .line 244
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/common/app/SlideNoticeManager$NoticeRecord;

    .line 245
    .local v2, "record":Lcom/meizu/common/app/SlideNoticeManager$NoticeRecord;
    iget-object v3, v2, Lcom/meizu/common/app/SlideNoticeManager$NoticeRecord;->activity:Landroid/app/Activity;

    if-nez v3, :cond_1

    .line 243
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 246
    :cond_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 247
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private scheduleTimeout(Lcom/meizu/common/app/SlideNoticeManager$NoticeRecord;)V
    .locals 5
    .param p1, "record"    # Lcom/meizu/common/app/SlideNoticeManager$NoticeRecord;

    .prologue
    const/4 v4, 0x1

    .line 148
    iget-object v3, p0, Lcom/meizu/common/app/SlideNoticeManager;->mHandler:Lcom/meizu/common/app/SlideNoticeManager$WorkerHandler;

    invoke-virtual {v3, p1}, Lcom/meizu/common/app/SlideNoticeManager$WorkerHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 149
    iget-object v3, p0, Lcom/meizu/common/app/SlideNoticeManager;->mHandler:Lcom/meizu/common/app/SlideNoticeManager$WorkerHandler;

    invoke-static {v3, v4, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 150
    .local v2, "m":Landroid/os/Message;
    iget v3, p1, Lcom/meizu/common/app/SlideNoticeManager$NoticeRecord;->duration:I

    if-eq v3, v4, :cond_0

    const-wide/16 v0, 0x7d0

    .line 151
    .local v0, "delay":J
    :goto_0
    iget-object v3, p0, Lcom/meizu/common/app/SlideNoticeManager;->mHandler:Lcom/meizu/common/app/SlideNoticeManager$WorkerHandler;

    invoke-virtual {v3, v2, v0, v1}, Lcom/meizu/common/app/SlideNoticeManager$WorkerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 152
    return-void

    .end local v0    # "delay":J
    :cond_0
    const-wide/16 v0, 0xdac

    .line 150
    goto :goto_0
.end method

.method private showNextNotice()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 124
    iget-object v3, p0, Lcom/meizu/common/app/SlideNoticeManager;->mNoticeQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/common/app/SlideNoticeManager$NoticeRecord;

    .line 125
    :goto_0
    if-nez v2, :cond_0

    .line 145
    return-void

    :cond_0
    :try_start_0
    const-string/jumbo v3, "SlideNoticeManager"

    .line 127
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Show callback="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/meizu/common/app/SlideNoticeManager$NoticeRecord;->callback:Lcom/meizu/common/app/SlideNoticeManager$NoticeCallBack;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v3, v2, Lcom/meizu/common/app/SlideNoticeManager$NoticeRecord;->callback:Lcom/meizu/common/app/SlideNoticeManager$NoticeCallBack;

    invoke-interface {v3}, Lcom/meizu/common/app/SlideNoticeManager$NoticeCallBack;->show()V

    .line 129
    invoke-direct {p0, v2}, Lcom/meizu/common/app/SlideNoticeManager;->scheduleTimeout(Lcom/meizu/common/app/SlideNoticeManager$NoticeRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "SlideNoticeManager"

    const-string/jumbo v4, "catch an exception when showing next notice, it will be romoved from queue"

    .line 133
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    iget-object v3, p0, Lcom/meizu/common/app/SlideNoticeManager;->mNoticeQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 135
    .local v1, "index":I
    if-gez v1, :cond_1

    .line 138
    :goto_1
    iget-object v3, p0, Lcom/meizu/common/app/SlideNoticeManager;->mNoticeQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_2

    const/4 v2, 0x0

    .line 141
    .local v2, "record":Lcom/meizu/common/app/SlideNoticeManager$NoticeRecord;
    goto :goto_0

    .line 136
    .end local v2    # "record":Lcom/meizu/common/app/SlideNoticeManager$NoticeRecord;
    :cond_1
    iget-object v3, p0, Lcom/meizu/common/app/SlideNoticeManager;->mNoticeQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 139
    :cond_2
    iget-object v3, p0, Lcom/meizu/common/app/SlideNoticeManager;->mNoticeQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/common/app/SlideNoticeManager$NoticeRecord;

    .local v2, "record":Lcom/meizu/common/app/SlideNoticeManager$NoticeRecord;
    goto :goto_0
.end method


# virtual methods
.method public cancelNotice(Lcom/meizu/common/app/SlideNoticeManager$NoticeCallBack;)V
    .locals 5
    .param p1, "callback"    # Lcom/meizu/common/app/SlideNoticeManager$NoticeCallBack;

    .prologue
    .line 175
    if-eqz p1, :cond_0

    .line 177
    iget-object v2, p0, Lcom/meizu/common/app/SlideNoticeManager;->mNoticeQueue:Ljava/util/ArrayList;

    monitor-enter v2

    .line 178
    :try_start_0
    invoke-direct {p0, p1}, Lcom/meizu/common/app/SlideNoticeManager;->indexOfNotice(Lcom/meizu/common/app/SlideNoticeManager$NoticeCallBack;)I

    move-result v0

    .line 179
    .local v0, "index":I
    if-gez v0, :cond_1

    const-string/jumbo v1, "SlideNoticeManager"

    .line 183
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Notice already cancelled. callback="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :goto_0
    monitor-exit v2

    .line 186
    return-void

    .line 176
    .end local v0    # "index":I
    :cond_0
    return-void

    .line 180
    .restart local v0    # "index":I
    :cond_1
    iget-object v1, p0, Lcom/meizu/common/app/SlideNoticeManager;->mHandler:Lcom/meizu/common/app/SlideNoticeManager$WorkerHandler;

    iget-object v3, p0, Lcom/meizu/common/app/SlideNoticeManager;->mNoticeQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/meizu/common/app/SlideNoticeManager$WorkerHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 181
    invoke-direct {p0, v0}, Lcom/meizu/common/app/SlideNoticeManager;->cancelNotice(I)V

    goto :goto_0

    .line 185
    .end local v0    # "index":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public enqueueNotice(Ljava/lang/CharSequence;Lcom/meizu/common/app/SlideNoticeManager$NoticeCallBack;I)V
    .locals 7
    .param p1, "message"    # Ljava/lang/CharSequence;
    .param p2, "callback"    # Lcom/meizu/common/app/SlideNoticeManager$NoticeCallBack;
    .param p3, "duration"    # I

    .prologue
    const-string/jumbo v4, "SlideNoticeManager"

    .line 90
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "enqueueNotice callback="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " message="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " duration="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    if-eqz p2, :cond_1

    .line 97
    iget-object v5, p0, Lcom/meizu/common/app/SlideNoticeManager;->mNoticeQueue:Ljava/util/ArrayList;

    monitor-enter v5

    .line 99
    :try_start_0
    invoke-direct {p0, p2}, Lcom/meizu/common/app/SlideNoticeManager;->indexOfNotice(Lcom/meizu/common/app/SlideNoticeManager$NoticeCallBack;)I

    move-result v0

    .line 100
    .local v0, "index":I
    if-gez v0, :cond_2

    .line 104
    const/4 v1, 0x0

    .line 105
    .local v1, "isSame":Z
    iget-object v4, p0, Lcom/meizu/common/app/SlideNoticeManager;->mNoticeQueue:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_3

    .line 110
    :cond_0
    :goto_0
    if-eqz v1, :cond_4

    .line 114
    :goto_1
    iget-object v4, p0, Lcom/meizu/common/app/SlideNoticeManager;->mNoticeQueue:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .line 117
    .end local v1    # "isSame":Z
    :goto_2
    if-eqz v0, :cond_5

    .line 120
    :goto_3
    monitor-exit v5

    .line 121
    return-void

    .line 94
    .end local v0    # "index":I
    :cond_1
    return-void

    .line 101
    .restart local v0    # "index":I
    :cond_2
    iget-object v4, p0, Lcom/meizu/common/app/SlideNoticeManager;->mNoticeQueue:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/common/app/SlideNoticeManager$NoticeRecord;

    .line 102
    .local v3, "record":Lcom/meizu/common/app/SlideNoticeManager$NoticeRecord;
    invoke-virtual {v3, p3}, Lcom/meizu/common/app/SlideNoticeManager$NoticeRecord;->update(I)V

    goto :goto_2

    .line 120
    .end local v0    # "index":I
    .end local v3    # "record":Lcom/meizu/common/app/SlideNoticeManager$NoticeRecord;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 106
    .restart local v0    # "index":I
    .restart local v1    # "isSame":Z
    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/meizu/common/app/SlideNoticeManager;->mNoticeQueue:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/meizu/common/app/SlideNoticeManager;->mNoticeQueue:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/common/app/SlideNoticeManager$NoticeRecord;

    .line 107
    .local v2, "r":Lcom/meizu/common/app/SlideNoticeManager$NoticeRecord;
    iget-object v4, v2, Lcom/meizu/common/app/SlideNoticeManager$NoticeRecord;->message:Ljava/lang/CharSequence;

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 108
    const/4 v1, 0x1

    goto :goto_0

    .line 111
    .end local v2    # "r":Lcom/meizu/common/app/SlideNoticeManager$NoticeRecord;
    :cond_4
    new-instance v3, Lcom/meizu/common/app/SlideNoticeManager$NoticeRecord;

    invoke-direct {v3, p1, p3, p2}, Lcom/meizu/common/app/SlideNoticeManager$NoticeRecord;-><init>(Ljava/lang/CharSequence;ILcom/meizu/common/app/SlideNoticeManager$NoticeCallBack;)V

    .line 112
    .restart local v3    # "record":Lcom/meizu/common/app/SlideNoticeManager$NoticeRecord;
    iget-object v4, p0, Lcom/meizu/common/app/SlideNoticeManager;->mNoticeQueue:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 118
    .end local v1    # "isSame":Z
    .end local v3    # "record":Lcom/meizu/common/app/SlideNoticeManager$NoticeRecord;
    :cond_5
    invoke-direct {p0}, Lcom/meizu/common/app/SlideNoticeManager;->showNextNotice()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method

.method public enqueueNoticeInActivity(Ljava/lang/CharSequence;Lcom/meizu/common/app/SlideNoticeManager$NoticeCallBack;ILandroid/app/Activity;)V
    .locals 7
    .param p1, "message"    # Ljava/lang/CharSequence;
    .param p2, "callback"    # Lcom/meizu/common/app/SlideNoticeManager$NoticeCallBack;
    .param p3, "duration"    # I
    .param p4, "activity"    # Landroid/app/Activity;

    .prologue
    const-string/jumbo v4, "SlideNoticeManager"

    .line 202
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "enqueueNoticeInActivity callback="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " message="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " duration="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " activity="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    if-nez p2, :cond_1

    .line 207
    :cond_0
    return-void

    .line 206
    :cond_1
    if-eqz p4, :cond_0

    .line 210
    iget-object v5, p0, Lcom/meizu/common/app/SlideNoticeManager;->mNoticeQueue:Ljava/util/ArrayList;

    monitor-enter v5

    .line 211
    :try_start_0
    iget-object v4, p0, Lcom/meizu/common/app/SlideNoticeManager;->mCurActivity:Landroid/app/Activity;

    if-ne v4, p4, :cond_3

    .line 216
    :goto_0
    invoke-direct {p0, p2}, Lcom/meizu/common/app/SlideNoticeManager;->indexOfNotice(Lcom/meizu/common/app/SlideNoticeManager$NoticeCallBack;)I

    move-result v0

    .line 217
    .local v0, "index":I
    if-gez v0, :cond_4

    .line 221
    const/4 v1, 0x0

    .line 222
    .local v1, "isSame":Z
    iget-object v4, p0, Lcom/meizu/common/app/SlideNoticeManager;->mNoticeQueue:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_5

    .line 227
    :cond_2
    :goto_1
    if-eqz v1, :cond_6

    .line 231
    :goto_2
    iget-object v4, p0, Lcom/meizu/common/app/SlideNoticeManager;->mNoticeQueue:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .line 234
    .end local v1    # "isSame":Z
    :goto_3
    if-eqz v0, :cond_7

    .line 237
    :goto_4
    monitor-exit v5

    .line 238
    return-void

    .line 212
    .end local v0    # "index":I
    :cond_3
    iput-object p4, p0, Lcom/meizu/common/app/SlideNoticeManager;->mCurActivity:Landroid/app/Activity;

    .line 213
    invoke-direct {p0}, Lcom/meizu/common/app/SlideNoticeManager;->removeLastActivityRecord()V

    goto :goto_0

    .line 237
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 218
    .restart local v0    # "index":I
    :cond_4
    :try_start_1
    iget-object v4, p0, Lcom/meizu/common/app/SlideNoticeManager;->mNoticeQueue:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/common/app/SlideNoticeManager$NoticeRecord;

    .line 219
    .local v3, "record":Lcom/meizu/common/app/SlideNoticeManager$NoticeRecord;
    invoke-virtual {v3, p3}, Lcom/meizu/common/app/SlideNoticeManager$NoticeRecord;->update(I)V

    goto :goto_3

    .line 223
    .end local v3    # "record":Lcom/meizu/common/app/SlideNoticeManager$NoticeRecord;
    .restart local v1    # "isSame":Z
    :cond_5
    iget-object v4, p0, Lcom/meizu/common/app/SlideNoticeManager;->mNoticeQueue:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/meizu/common/app/SlideNoticeManager;->mNoticeQueue:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/common/app/SlideNoticeManager$NoticeRecord;

    .line 224
    .local v2, "r":Lcom/meizu/common/app/SlideNoticeManager$NoticeRecord;
    iget-object v4, v2, Lcom/meizu/common/app/SlideNoticeManager$NoticeRecord;->message:Ljava/lang/CharSequence;

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 225
    const/4 v1, 0x1

    goto :goto_1

    .line 228
    .end local v2    # "r":Lcom/meizu/common/app/SlideNoticeManager$NoticeRecord;
    :cond_6
    new-instance v3, Lcom/meizu/common/app/SlideNoticeManager$NoticeRecord;

    invoke-direct {v3, p1, p3, p2, p4}, Lcom/meizu/common/app/SlideNoticeManager$NoticeRecord;-><init>(Ljava/lang/CharSequence;ILcom/meizu/common/app/SlideNoticeManager$NoticeCallBack;Landroid/app/Activity;)V

    .line 229
    .restart local v3    # "record":Lcom/meizu/common/app/SlideNoticeManager$NoticeRecord;
    iget-object v4, p0, Lcom/meizu/common/app/SlideNoticeManager;->mNoticeQueue:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 235
    .end local v1    # "isSame":Z
    .end local v3    # "record":Lcom/meizu/common/app/SlideNoticeManager$NoticeRecord;
    :cond_7
    invoke-direct {p0}, Lcom/meizu/common/app/SlideNoticeManager;->showNextNotice()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4
.end method
