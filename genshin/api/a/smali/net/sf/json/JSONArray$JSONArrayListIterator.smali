.class Lnet/sf/json/JSONArray$JSONArrayListIterator;
.super Ljava/lang/Object;
.source "JSONArray.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/json/JSONArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JSONArrayListIterator"
.end annotation


# instance fields
.field currentIndex:I

.field lastIndex:I

.field final synthetic this$0:Lnet/sf/json/JSONArray;


# direct methods
.method constructor <init>(Lnet/sf/json/JSONArray;)V
    .locals 0

    .line 2545
    iput-object p1, p0, Lnet/sf/json/JSONArray$JSONArrayListIterator;->this$0:Lnet/sf/json/JSONArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2542
    const/4 p1, 0x0

    iput p1, p0, Lnet/sf/json/JSONArray$JSONArrayListIterator;->currentIndex:I

    .line 2543
    const/4 p1, -0x1

    iput p1, p0, Lnet/sf/json/JSONArray$JSONArrayListIterator;->lastIndex:I

    .line 2547
    return-void
.end method

.method constructor <init>(Lnet/sf/json/JSONArray;I)V
    .locals 0
    .param p2, "index"    # I

    .line 2549
    iput-object p1, p0, Lnet/sf/json/JSONArray$JSONArrayListIterator;->this$0:Lnet/sf/json/JSONArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2542
    const/4 p1, 0x0

    iput p1, p0, Lnet/sf/json/JSONArray$JSONArrayListIterator;->currentIndex:I

    .line 2543
    const/4 p1, -0x1

    iput p1, p0, Lnet/sf/json/JSONArray$JSONArrayListIterator;->lastIndex:I

    .line 2550
    iput p2, p0, Lnet/sf/json/JSONArray$JSONArrayListIterator;->currentIndex:I

    .line 2551
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 2618
    :try_start_0
    iget-object v0, p0, Lnet/sf/json/JSONArray$JSONArrayListIterator;->this$0:Lnet/sf/json/JSONArray;

    iget v1, p0, Lnet/sf/json/JSONArray$JSONArrayListIterator;->currentIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lnet/sf/json/JSONArray$JSONArrayListIterator;->currentIndex:I

    invoke-virtual {v0, v1, p1}, Lnet/sf/json/JSONArray;->add(ILjava/lang/Object;)V

    .line 2619
    const/4 v0, -0x1

    iput v0, p0, Lnet/sf/json/JSONArray$JSONArrayListIterator;->lastIndex:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2622
    nop

    .line 2623
    return-void

    .line 2620
    :catch_0
    move-exception v0

    .line 2621
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1
.end method

.method public hasNext()Z
    .locals 2

    .line 2554
    iget v0, p0, Lnet/sf/json/JSONArray$JSONArrayListIterator;->currentIndex:I

    iget-object v1, p0, Lnet/sf/json/JSONArray$JSONArrayListIterator;->this$0:Lnet/sf/json/JSONArray;

    invoke-virtual {v1}, Lnet/sf/json/JSONArray;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .line 2582
    iget v0, p0, Lnet/sf/json/JSONArray$JSONArrayListIterator;->currentIndex:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    .line 2559
    :try_start_0
    iget-object v0, p0, Lnet/sf/json/JSONArray$JSONArrayListIterator;->this$0:Lnet/sf/json/JSONArray;

    iget v1, p0, Lnet/sf/json/JSONArray$JSONArrayListIterator;->currentIndex:I

    invoke-virtual {v0, v1}, Lnet/sf/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 2560
    .local v0, "next":Ljava/lang/Object;
    iget v1, p0, Lnet/sf/json/JSONArray$JSONArrayListIterator;->currentIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lnet/sf/json/JSONArray$JSONArrayListIterator;->currentIndex:I

    iput v1, p0, Lnet/sf/json/JSONArray$JSONArrayListIterator;->lastIndex:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2561
    return-object v0

    .line 2562
    .end local v0    # "next":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 2563
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public nextIndex()I
    .locals 1

    .line 2597
    iget v0, p0, Lnet/sf/json/JSONArray$JSONArrayListIterator;->currentIndex:I

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 2

    .line 2587
    :try_start_0
    iget v0, p0, Lnet/sf/json/JSONArray$JSONArrayListIterator;->currentIndex:I

    add-int/lit8 v0, v0, -0x1

    .line 2588
    .local v0, "index":I
    iget-object v1, p0, Lnet/sf/json/JSONArray$JSONArrayListIterator;->this$0:Lnet/sf/json/JSONArray;

    invoke-virtual {v1, v0}, Lnet/sf/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 2589
    .local v1, "previous":Ljava/lang/Object;
    iput v0, p0, Lnet/sf/json/JSONArray$JSONArrayListIterator;->currentIndex:I

    iput v0, p0, Lnet/sf/json/JSONArray$JSONArrayListIterator;->lastIndex:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2590
    return-object v1

    .line 2591
    .end local v0    # "index":I
    .end local v1    # "previous":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 2592
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public previousIndex()I
    .locals 1

    .line 2601
    iget v0, p0, Lnet/sf/json/JSONArray$JSONArrayListIterator;->currentIndex:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .locals 3

    .line 2568
    iget v0, p0, Lnet/sf/json/JSONArray$JSONArrayListIterator;->lastIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 2571
    :try_start_0
    iget-object v2, p0, Lnet/sf/json/JSONArray$JSONArrayListIterator;->this$0:Lnet/sf/json/JSONArray;

    invoke-virtual {v2, v0}, Lnet/sf/json/JSONArray;->remove(I)Ljava/lang/Object;

    .line 2572
    iget v0, p0, Lnet/sf/json/JSONArray$JSONArrayListIterator;->lastIndex:I

    iget v2, p0, Lnet/sf/json/JSONArray$JSONArrayListIterator;->currentIndex:I

    if-ge v0, v2, :cond_0

    .line 2573
    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lnet/sf/json/JSONArray$JSONArrayListIterator;->currentIndex:I

    .line 2575
    :cond_0
    iput v1, p0, Lnet/sf/json/JSONArray$JSONArrayListIterator;->lastIndex:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2578
    nop

    .line 2579
    return-void

    .line 2576
    :catch_0
    move-exception v0

    .line 2577
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 2569
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 2605
    iget v0, p0, Lnet/sf/json/JSONArray$JSONArrayListIterator;->lastIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2610
    :try_start_0
    iget-object v1, p0, Lnet/sf/json/JSONArray$JSONArrayListIterator;->this$0:Lnet/sf/json/JSONArray;

    invoke-virtual {v1, v0, p1}, Lnet/sf/json/JSONArray;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2613
    nop

    .line 2614
    return-void

    .line 2611
    :catch_0
    move-exception v0

    .line 2612
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 2606
    .end local v0    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
