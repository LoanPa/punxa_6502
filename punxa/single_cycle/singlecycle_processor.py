import py4hw

class SingleCycle6502(py4hw.Logic):
    
    def __init__(self, parent, name:str, memory:MemoryInterface, 
                 reset, irq, nmi, resetAddress):
                 
         super().__init__(parent, name)
         
         self.reset = self.addIn('reset', reset)
         self.irq = self.addIn('irq', irq)
         self.nmi = self.addIn('nmi', nmi)
         
         self.mem = self.addInterfaceSource('memory', memory)
         
         self.co = self.run()
         
    def clock(self):
        pass
        
    def run(self):
        pass
        
    def fetch(self):
        self.ins = yield from self.memoryLoad(self.pc)
        
    def decode(self):
        self.decoded_ins, self.decoded_addressing = ins_to_str(self.ins)
