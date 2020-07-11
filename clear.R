clearall <-
  function() {
    # Clear plots
    dev.off()  # But only if there IS a plot
    
    # Clear console
    cat("\014")  # ctrl+L
  }
