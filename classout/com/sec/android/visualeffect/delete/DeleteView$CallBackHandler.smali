.class Lcom/sec/android/visualeffect/delete/DeleteView$CallBackHandler;
.super Landroid/os/Handler;
.source "DeleteView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/visualeffect/delete/DeleteView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CallBackHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/visualeffect/delete/DeleteView;


# direct methods
.method constructor <init>(Lcom/sec/android/visualeffect/delete/DeleteView;)V
    .registers 2

    .prologue
    .line 343
    iput-object p1, p0, Lcom/sec/android/visualeffect/delete/DeleteView$CallBackHandler;->this$0:Lcom/sec/android/visualeffect/delete/DeleteView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 348
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_74

    .line 378
    :goto_5
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 379
    return-void

    .line 351
    :pswitch_9
    # getter for: Lcom/sec/android/visualeffect/delete/DeleteView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/visualeffect/delete/DeleteView;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VIEW_READY"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    sget-object v0, Lcom/sec/android/visualeffect/delete/DeleteView;->mListener:Lcom/sec/android/visualeffect/delete/DeleteView$CrumplingEventListener;

    invoke-interface {v0}, Lcom/sec/android/visualeffect/delete/DeleteView$CrumplingEventListener;->onViewReady()V

    goto :goto_5

    .line 355
    :pswitch_18
    # getter for: Lcom/sec/android/visualeffect/delete/DeleteView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/visualeffect/delete/DeleteView;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ANI_END"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    sget-object v0, Lcom/sec/android/visualeffect/delete/DeleteView;->mListener:Lcom/sec/android/visualeffect/delete/DeleteView$CrumplingEventListener;

    invoke-interface {v0}, Lcom/sec/android/visualeffect/delete/DeleteView$CrumplingEventListener;->onAnimationEnd()V

    goto :goto_5

    .line 359
    :pswitch_27
    # getter for: Lcom/sec/android/visualeffect/delete/DeleteView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/visualeffect/delete/DeleteView;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CRUMPLE_END"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    sget-object v0, Lcom/sec/android/visualeffect/delete/DeleteView;->mListener:Lcom/sec/android/visualeffect/delete/DeleteView$CrumplingEventListener;

    invoke-interface {v0}, Lcom/sec/android/visualeffect/delete/DeleteView$CrumplingEventListener;->onCrumplingEnd()V

    goto :goto_5

    .line 363
    :pswitch_36
    # getter for: Lcom/sec/android/visualeffect/delete/DeleteView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/visualeffect/delete/DeleteView;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MOVE_END"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    sget-object v0, Lcom/sec/android/visualeffect/delete/DeleteView;->mListener:Lcom/sec/android/visualeffect/delete/DeleteView$CrumplingEventListener;

    invoke-interface {v0}, Lcom/sec/android/visualeffect/delete/DeleteView$CrumplingEventListener;->onMovingEnd()V

    goto :goto_5

    .line 367
    :pswitch_45
    # getter for: Lcom/sec/android/visualeffect/delete/DeleteView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/visualeffect/delete/DeleteView;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "THREAD_READY"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    sget-object v0, Lcom/sec/android/visualeffect/delete/DeleteView;->mListener:Lcom/sec/android/visualeffect/delete/DeleteView$CrumplingEventListener;

    invoke-interface {v0}, Lcom/sec/android/visualeffect/delete/DeleteView$CrumplingEventListener;->onViewCreated()V

    goto :goto_5

    .line 371
    :pswitch_54
    # getter for: Lcom/sec/android/visualeffect/delete/DeleteView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/visualeffect/delete/DeleteView;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "THREAD_STOP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v0, p0, Lcom/sec/android/visualeffect/delete/DeleteView$CallBackHandler;->this$0:Lcom/sec/android/visualeffect/delete/DeleteView;

    # getter for: Lcom/sec/android/visualeffect/delete/DeleteView;->mRenderThread:Lcom/sec/android/visualeffect/delete/RenderThread;
    invoke-static {v0}, Lcom/sec/android/visualeffect/delete/DeleteView;->access$100(Lcom/sec/android/visualeffect/delete/DeleteView;)Lcom/sec/android/visualeffect/delete/RenderThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/delete/RenderThread;->finish()V

    goto :goto_5

    .line 375
    :pswitch_67
    iget-object v0, p0, Lcom/sec/android/visualeffect/delete/DeleteView$CallBackHandler;->this$0:Lcom/sec/android/visualeffect/delete/DeleteView;

    # getter for: Lcom/sec/android/visualeffect/delete/DeleteView;->mView:Lcom/sec/android/visualeffect/delete/DeleteView;
    invoke-static {v0}, Lcom/sec/android/visualeffect/delete/DeleteView;->access$200(Lcom/sec/android/visualeffect/delete/DeleteView;)Lcom/sec/android/visualeffect/delete/DeleteView;

    move-result-object v0

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_5

    .line 348
    nop

    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_9
        :pswitch_18
        :pswitch_27
        :pswitch_36
        :pswitch_45
        :pswitch_54
        :pswitch_67
    .end packed-switch
.end method
